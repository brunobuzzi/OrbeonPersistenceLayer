#! /bin/sh
# Requires GS_HOME variable defined
# Perform a backup operation on a given {STONE_NAME} and version {VERSION}
PROGRAM_NAME="backup"
source ./common.sh
usage() {
  error "Usage: ${PROGRAM_NAME} -s STONE_NAME -v GS_VERSION"
}

if [ "$1" = "-h" ] || [ "$1" = "--help" ]; then
  echo "Usage: backup -s STONE_NAME -v GS_VERSION"
  exit 0
fi

while getopts :l:s:v:f: opt; do
  case $opt in
    s) STONE=$OPTARG ;;
    v) GS_VERSION=$OPTARG ;;
    f) FILE=$OPTARG ;;
    \?) error "Invalid option: -$OPTARG"
      usage
      exit 1
      ;;
    :)error "Option -$OPTARG requires Stone name and ports."
      usage
      exit 1
     ;;
  esac
done

info "Start: Set Session Variables"
source ./setGs.sh -s $STONE -v $GS_VERSION
info "Finish: Set Session Variables"

info "Start: Backup STONE ${STONE} VERSION ${GS_VERSION}"

GS_USER=DataCurator
PWD=`./getGsPwd.sh -u $GS_USER`
$GS_HOME/bin/startTopaz $STONE -il <<EOF >>backup.log
set user $GS_USER password $PWD gemstone $STONE
login
exec 
  System abort.
  SystemRepository fullBackupTo: '$GS_BACKUPS/$FILE'.
  System commit.
%
logout
quit
EOF

if [ $? -ne 0 ]; then
  error "Failed to peform backup {backup.log}"
  exit 1
fi


info "Finish: Backup STONE ${STONE_NAME} VERSION ${GS_VERSION}"
info "The backup ${FILE} has been created at ${GS_BACKUPS}"
