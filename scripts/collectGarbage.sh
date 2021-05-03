#! /bin/sh
# Requires GS_HOME variable defined
# Perform a Garbage Collection operation on a given {STONE} 
PROGRAM_NAME="collectGarbage"
source ./common.sh
usage() {
  error "Usage: ${PROGRAM_NAME} -s STONE"
}

if [ "$1" = "-h" ] || [ "$1" = "--help" ]; then
  echo "Usage: collectGarbage -s STONE"
  exit 0
fi

while getopts :l:s:v:f: opt; do
  case $opt in
    s) STONE=$OPTARG ;;
    v) GS_VERSION=$OPTARG ;;
    f) FILE==$OPTARG ;;
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

info "Start: Garbage Collection on STONE ${STONE}"

GS_USER=DataCurator
PWD=`./getGsPwd.sh -u $GS_USER`
$GS_HOME/bin/startTopaz $STONE -il <<EOF >>backup.log
set user $GS_USER password $PWD gemstone $STONE
login
exec 
  System abort.
  SystemRepository markForCollection.
  System commit.
  SystemRepository reclaimAll.
  System commit.
%
logout
quit
EOF

if [ $? -ne 0 ]; then
  error "Failed to peform GC {gc.log}"
  exit 1
fi


info "Finish: Garbage Collection STONE ${STONE_NAME}"
