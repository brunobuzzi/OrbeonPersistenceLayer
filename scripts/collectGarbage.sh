#! /bin/sh
# Requires GS_HOME variable defined
# Perform a Garbage Collection operation on a given {STONE} 
PROGRAM_NAME="collectGarbage"
source ./common.sh
usage() {
  error "Usage: ${PROGRAM_NAME}"
}

if [ "$1" = "-h" ] || [ "$1" = "--help" ]; then
  echo "Usage: collectGarbage"
  exit 0
fi

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

info "Start: Garbage Collection on STONE ${STONE_NAME}"

GS_USER=DataCurator
PWD=`./getGsPwd.sh -u $GS_USER`
$GS_HOME/bin/startTopaz $STONE_NAME -il <<EOF >>$GS_LOGS/collectGarbage.log
set user $GS_USER password $PWD gemstone $STONE_NAME
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
  error "Failed to peform check ${GS_LOGS}/collectGarbage.log"
  exit 1
fi

info "Finish: Garbage Collection STONE ${STONE_NAME}"
