#! /bin/sh
# Requires GS_HOME variable defined
# Set session variables of a given {STONE_NAME} and version {VERSION}
# Use with care if the {STONE_NAME} and {VERSION} does not match then other scripts will fail
PROGRAM_NAME="getGsPwd"
source ./common.sh
usage() {
  error "Usage: ${PROGRAM_NAME} -u USER_NAME"
}

if [ "$1" = "-h" ] || [ "$1" = "--help" ]; then
  echo "Usage: getGsPwd -u USER_NAME"
  exit 0
fi

if [ -z ${GS_HOME+x} ]; then
  echo "GS_HOME variable is unset. Set this variable first and try again...";
  exit 0
fi

while getopts :l:u: opt; do
  case $opt in
    u) USER_NAME=$OPTARG ;;
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

cat userpwd | grep "${USER_NAME}" | cut -d'=' -f 2