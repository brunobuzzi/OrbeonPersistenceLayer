#! /bin/sh
# Requires GS_HOME variable defined
# Print defined session variables for GemStone
# See also setGs.sh
PROGRAM_NAME="printGsVars"
source ./common.sh
usage() {
  error "Usage: ${PROGRAM_NAME}"
}

if [ "$1" = "-h" ] || [ "$1" = "--help" ]; then
  echo "Usage: printGsVars"
  echo "Print defined session variables for GemStone"; 
  echo "See also setGs.sh";
  exit 0
fi

if [ -z ${GS_HOME+x} ]; then
  echo "GS_HOME variable is unset. Set this variable first and try again...";
  exit 0
fi

echo "GEMSTONE: " $GEMSTONE
echo "STONE_NAME:   " $STONE_NAME
echo "GS_VERSION:   " $GS_VERSION
echo "GS_BACKUPS:   " $GS_BACKUPS
echo "GS_EXTENTS:   " $GS_EXTENTS
echo "GS_TRANLOGS:  " $GS_TRANLOGS
echo "GS_LOGS:      " $GS_LOGS