#! /bin/sh
# Requires GS_HOME variable defined
# To unregister application.
# This shell command has to be executed only once (after register-application.sh has been executed). 
# And is used if you want to uninstall the Web Application.
SCRIPT="unregister-application"
source ./common.sh
usage() {
  error "Usage: ${SCRIPT}"
}

if [ "$1" = "-h" ] || [ "$1" = "--help" ]; then
  echo "Usage: unregister-application STONE_NAME"
  echo "This script is to unregister Bpm Flow web application and if it is necessary it should be executed after registration";
  echo "To register the web application again see register-application script"     
  echo "The environment variable GS_HOME must be set";
  echo "This script is used in conjunction with register-application script";   
  exit 0
fi
if [ -z ${GS_HOME+x} ]; then
  echo "GS_HOME variable is unset. Set this variable first and try again...";
  exit 0
fi

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

info "Start: Unregistering Web Servers"

GS_USER=DataCurator
PWD=`./getGsPwd.sh -u $GS_USER`
$GS_HOME/bin/startTopaz $STONE_NAME -il <<EOF >>$GS_LOGS/unregister-application.log
set user $GS_USER password $PWD gemstone $STONE_NAME
login
exec 
System beginTransaction.
OrbeonLayerAppLinuxScripts unregisterScript.
System commit.
%
logout
quit
EOF

if [ $? -ne 0 ]; then
  error "Failed to unregister Web Applications check ${GS_LOGS}/unregister-application.log"
  exit 1
fi

info "Finish: All Web Components have been unregistered !!!"
