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

while getopts :l:s:v: opt; do
  case $opt in
    s) STONE_NAME=$OPTARG ;;
    v) GS_VERSION=$OPTARG ;;
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
INSTALL_PRE=$GS_HOME/shared/downloads/products/GemStone64Bit
INSTALL_POST=-x86_64.Linux
export GEMSTONE=$INSTALL_PRE$GS_VERSION$INSTALL_POST
export STONE_NAME=$STONE_NAME
export GS_VERSION=$GS_VERSION
export GS_BACKUPS=$GS_HOME/server/stones/$STONE_NAME/backups
export GS_EXTENTS=$GS_HOME/server/stones/$STONE_NAME/extents
export GS_TRANLOGS=$GS_HOME/server/stones/$STONE_NAME/tranlogs
export GS_LOGS=$GS_HOME/server/stones/$STONE_NAME/logs

echo "GEMSTONE: " $GEMSTONE
echo "STONE_NAME:   " $STONE_NAME
echo "GS_VERSION:   " $GS_VERSION
echo "GS_BACKUPS:   " $GS_BACKUPS
echo "GS_EXTENTS:   " $GS_EXTENTS
echo "GS_TRANLOGS:  " $GS_TRANLOGS
echo "GS_LOGS:      " $GS_LOGS