#! /bin/sh
# Requires GS_HOME variable defined
# To register the application to run, this shell command has to be executed only once. This script read data in ports-all.ini file and register all ports in this file. 
# For example if  ports-all.ini has the following content: 8787,8888,8989
# This will register the Web Application to be used in ports: 8787,8888,8989. 
# Comma is used to separate ports. The ini's files are in the same directory as the scripts.
SCRIPT="register-application"
source ./common.sh
usage() {
  error "Usage: ${SCRIPT}"
}

if [ "$1" = "-h" ] || [ "$1" = "--help" ]; then
  echo "Usage: register-application STONE_NAME"
  echo "This script is to register Bpm Flow web application and it should be executed only once after the installation process";
  echo "To unregister the web application see unregister-application script"     
  echo "The environment variable GS_HOME must be set";
  echo "This script is used in conjunction with unregister-application script";   
  exit 0
fi
if [ -z ${GS_HOME+x} ]; then
  echo "GS_HOME variable is unset. Set this variable first and try again...";
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

info "Start: Registering Web Servers"

GS_USER=DataCurator
PWD=`./getGsPwd.sh -u $GS_USER`
$GS_HOME/bin/startTopaz $STONE_NAME -il <<EOF >>$GS_LOGS/register-application.log
set user $GS_USER password $PWD gemstone $STONE_NAME
login
exec 
System beginTransaction.
OrbeonLayerAppLinuxScripts registerScript.
System commit.
%
logout
quit
EOF

if [ $? -ne 0 ]; then
  error "Failed to register Web Applications check ${GS_LOGS}/register-application.log"
  exit 1
fi

info "Finish: All Web Components have been registered !!!"
