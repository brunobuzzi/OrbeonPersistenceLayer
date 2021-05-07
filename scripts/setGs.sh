#! /bin/sh
# Requires GS_HOME variable defined
# Set session variables of a given {STONE_NAME} and version {VERSION}
# Use with care if the {STONE_NAME} and {VERSION} does not match then other scripts will fail
PROGRAM_NAME="setGs"
source ./common.sh
usage() {
  error "Usage: ${PROGRAM_NAME} -s DBNAME -v VERSION (with dots)"
}

if [ "$1" = "-h" ] || [ "$1" = "--help" ]; then
  echo "Usage: setGS -s STONE_NAME -v VERSION"
  echo "Set session variables of a given {STONE_NAME} and -VERSION (with dots)"; 
  echo "The environment variable GS_HOME must be set";
  exit 0
fi

if [ -z ${GS_HOME+x} ]; then
  echo "GS_HOME variable is unset. Set this variable first and try again...";
  exit 0
fi
OPTIND=1
printVerbose=1
while getopts l:s:v:q opt; do
  case $opt in
    s) STONE_NAME=$OPTARG ;;
    v) GS_VERSION=$OPTARG ;;
    q) printVerbose=0 ;;
    \?) error "Invalid option: -$OPTARG"
      usage
      return 1
      ;;
    :) error "Option -$OPTARG requires Stone name and Version."
      usage
      return 1
     ;;
  esac
done
INSTALL_PRE=$GS_HOME/shared/downloads/products/GemStone64Bit
INSTALL_POST=-x86_64.Linux
export GEMSTONE=$INSTALL_PRE$GS_VERSION$INSTALL_POST
export GS_CLEAN_EXTENT=$GEMSTONE/bin/extent0.dbf
export STONE_NAME=$STONE_NAME
export GS_VERSION=$GS_VERSION
export GS_CONF_FILE=$GS_HOME/server/stones/$STONE_NAME/extents/system.conf
export GS_BACKUPS=$GS_HOME/server/stones/$STONE_NAME/backups
export GS_EXTENTS=$GS_HOME/server/stones/$STONE_NAME/extents
export GS_TRANLOGS=$GS_HOME/server/stones/$STONE_NAME/tranlogs
export GS_LOGS=$GS_HOME/server/stones/$STONE_NAME/logs

if (( printVerbose==1 )) ; then
  source ./printGsVars.sh
fi
