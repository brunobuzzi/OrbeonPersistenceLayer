#! /bin/sh
# Requires GS_HOME variable defined
# Perform a backup operation on a given {STONE_NAME} and version {VERSION}
PROGRAM_NAME="backup"
source ./common.sh
usage() {
  error "Usage: ${PROGRAM_NAME} -s STONE_NAME -v GS_VERSION"
}

if [ "$1" = "-h" ] || [ "$1" = "--help" ]; then
  echo "Usage: backup -s STONE_NAME -v GS_VERSION"
  exit 0
fi

while getopts :l:s:v:f: opt; do
  case $opt in
    s) STONE=$OPTARG ;;
    v) GS_VERSION=$OPTARG ;;
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

info "Start: Set Session Variables"
source ./setGs.sh -s $STONE -v $GS_VERSION
info "Finish: Set Session Variables"

info "Start STEP 1: Stop STONE ${STONE}"
info "Finish STEP 1: Stop STONE ${STONE}"

info "Start STEP 2: Move old or corrupted EXTENTS for further analysis"
info "Finish STEP 2: Move old or corrupted EXTENTS for further analysis"

info "Start STEP 3: Delete current extent from EXTENTS location"
info "Finish STEP 3: Delete current extent from EXTENTS location"

info "Start STEP 4: Copy clean EXTENTS to EXTENTS location"
info "Finish STEP 4: Copy clean EXTENTS to EXTENTS location"

info "Start STEP 5: Check disk space for TRAN_LOGS"
info "Finish STEP 5: Check disk space for TRAN_LOGS"

info "Start STEP 6: Configure the EXTENTS for pre-grow"
info "Finish STEP 6: Configure the EXTENTS for pre-grow"

info "Start STEP 7: Start STONE ${STONE} in RESTORE mode"
info "Finish STEP 7: Start STONE ${STONE} in RESTORE mode"

info "Start STEP 8: Log in to GemStone as DataCurator or SystemUser using linked Topaz (topaz -l)"
info "Finish STEP 8: Log in to GemStone as DataCurator or SystemUser using linked Topaz (topaz -l)"

info "Start STEP 9: Restore the most recent full backup to the new repository"
info "Finish STEP 9: Restore the most recent full backup to the new repository"

info "Start STEP 10: Restore TRAN_LOGS"
info "Finish STEP 10: Restore TRAN_LOGS"


GS_USER=DataCurator
PWD=`./getGsPwd.sh -u $GS_USER`
$GS_HOME/bin/startTopaz $STONE -il <<EOF >>backup.log
set user $GS_USER password $PWD gemstone $STONE
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
  error "Failed to peform backup {backup.log}"
  exit 1
fi


info "Finish: Backup STONE ${STONE_NAME} VERSION ${GS_VERSION}"
