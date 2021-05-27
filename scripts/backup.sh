#! /bin/sh
# Requires GS_HOME variable defined
# Requires workwith.sh to be executed first
# Perform a backup operation on a given {STONE_NAME} and version {VERSION}
PROGRAM_NAME="backup"
source ./common.sh
usage() {
  error "Usage: ${PROGRAM_NAME} -f BACKUP_FILE"
}

if [ "$1" = "-h" ] || [ "$1" = "--help" ]; then
  echo "Requires workwith.sh -s -v to be executed first" 
  echo "Usage: backup -s STONE_NAME -v GS_VERSION -f BACKUP_FILE"
  exit 0
fi

while getopts :l:f: opt; do
  case $opt in
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


IS_STONE_DEFINED=$(isStoneNameAndVersionDefined) 

if [ $IS_STONE_DEFINED = 0 ]; then
  error "STONE_NAME AND VERSION are not defined"
  print_actions "execute . workwith -s STONE_NAME -v VERSION"
  exit 1
fi

./checkIfStoneExist.sh $STONE_NAME
if [ $? -ne 0 ]; then
  error "The Stone ${STONE_NAME} does NOT exist"
  exit 1
fi

info "Start: Backup STONE ${STONE} VERSION ${GS_VERSION}"

GS_USER=DataCurator
PWD=`./getGsPwd.sh -u $GS_USER`
$GS_HOME/bin/startTopaz $STONE_NAME -il <<EOF >>$GS_LOGS/backup.log
set user $GS_USER password $PWD gemstone $STONE_NAME
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
  error "Failed to peform backup ${GS_LOGS}/backup.log"
  exit 1
fi


info "Finish: Backup STONE ${STONE_NAME} VERSION ${GS_VERSION}"
info "The backup ${FILE} has been created at ${GS_BACKUPS}"
