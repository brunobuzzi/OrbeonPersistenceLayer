#! /bin/sh
# Requires GS_HOME variable defined
# This command take an argument and stop the Gem Process running on that port.
SCRIPT="stop-on"
source ./common.sh
usage() {
  error "Usage: ${SCRIPT}"
}

if [ "$1" = "-h" ] || [ "$1" = "--help" ]; then
  echo "Usage: stop-on PORT"
  echo "Stop a Web Server on port number PORT"; 
  echo "The environment variable GS_HOME must be set"; 
  echo "This script is used in conjunction with start-on.sh script";   
  exit 0
fi

if [ -z ${GS_HOME+x} ]; then
  echo "GS_HOME variable is unset. Set this variable first and try again...";
  exit 0
fi

while getopts :l:p: opt; do
  case $opt in
    p) PORTS=$OPTARG ;;
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
  print_actions "execute ./workwith -s STONE_NAME -v VERSION"
  exit 1
fi

./checkIfStoneExist.sh $STONE
if [ $? -ne 0 ]; then
  error "The Stone {$STONE} does NOT exist"
  exit 1
fi

info "Start: Stopping Web Servers on port $PORTS"


GS_USER=DataCurator
PWD=`./getGsPwd.sh -u $GS_USER`
$GS_HOME/bin/startTopaz $STONE_NAME -u "WebServer" -il <<EOF >>$GS_LOGS/stop-on.log
set user $GS_USER password $PWD gemstone $STONE_NAME
login
exec 
   | handler commitThreshold usedMemory |

   commitThreshold := 80.
   handler := AlmostOutOfMemory addDefaultHandler: [ :ex | 
     Transcript show: ('AlmostOutOfMemory: ', ex printString); cr.
     System commitTransaction ifFalse: [Transcript show: 'AutoCommit failed'. nil error: 'AutoCommit failed' ].
     System _vmMarkSweep. "GC executed to remove unnecessary objects"
     Transcript show: ('GC Executed'); cr. 
     usedMemory := System _tempObjSpacePercentUsedLastMark.
     Transcript show: ('Used Memory: ', usedMemory printString); cr. 
     (usedMemory < commitThreshold)
     ifTrue: [System enableAlmostOutOfMemoryError]"we are cool the memory droped below threshold"
     ifFalse: [(ObjectLogEntry trace: 'AlmostOutOfMemory' object: (System _vmInstanceCounts: 3)) addToLog.
               System commitTransaction].
     ex resume.
   ].
   SessionTemps current at: #'AlmostOutOfMemoryStaticException' put: handler.
   System signalAlmostOutOfMemoryThreshold: commitThreshold.

  OrbeonLayerAppLinuxScripts stopOnPortsScript: '$PORTS'.
%
logout
quit
EOF

if [ $? -ne 0 ]; then
  error "Failed to stop Web Servers check ${GS_LOGS}/stop-on.log"
  exit 1
fi

info "Finish: Stopping Web Servers on port $PORTS"