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

info "Start: Restore BACKUP"

info "Start STEP 1: Stop STONE ${STONE}"
stopStone ${STONE}
info "Finish STEP 1: Stop STONE ${STONE}"

info "Start STEP 2: Move old or corrupted EXTENTS for further analysis"
mkdir $GS_EXTENTS/deleted-extents
cp $GS_EXTENTS/*.* $GS_EXTENTS/deleted-extents
info "Finish STEP 2: Move old or corrupted EXTENTS for further analysis"

info "Start STEP 3: Delete current extent from EXTENTS location"
rm -Rf $GS_EXTENTS/*.*
info "Finish STEP 3: Delete current extent from EXTENTS location"

info "Start STEP 4: Copy clean EXTENTS to EXTENTS location"
$GEMSTONE/bin/copydbf $GS_CLEAN_EXTENT $GS_EXTENTS/extent0.dbf
chmod 600 $GS_EXTENTS/extent0.dbf
info "Finish STEP 4: Copy clean EXTENTS to EXTENTS location"

info "Start STEP 5: Check disk space for TRAN_LOGS"
info "Finish STEP 5: Check disk space for TRAN_LOGS"

info "Start STEP 6: Configure the EXTENTS for pre-grow"
#DBF_EXTENT_SIZES = 3G;
#DBF_PRE_GROW = TRUE;
info "Finish STEP 6: Configure the EXTENTS for pre-grow"

info "Start STEP 7: Start STONE ${STONE} in RESTORE mode"
startStone -R ${STONE}
info "Finish STEP 7: Start STONE ${STONE} in RESTORE mode"

info "Start STEP 8 & 9: Log in to GemStone as DataCurator or SystemUser using linked Topaz (topaz -l) and Restore the most recent full backup to the new repository"
GS_USER=DataCurator
PWD=`./getGsPwd.sh -u $GS_USER`
$GS_HOME/bin/startTopaz $STONE -il <<EOF >>$GS_LOGS/restore.log
set user $GS_USER password $PWD gemstone $STONE
login
exec 
  SystemRepository restoreFromBackup: '$FILE'.
%
logout
quit
EOF

if [ $? -ne 0 ]; then
  error "Failed to peform backup {backup.log}"
  exit 1
fi

info "Finish STEP 8 & 9: Log in to GemStone as DataCurator or SystemUser using linked Topaz (topaz -l) and Restore the most recent full backup to the new repository"

info "Finish: Restore BACKUP"

info "Start: Restore TRANLOGS"

info "Start STEP 1 & 2: Determine which transaction logs are needed for restore and their locations"
info "Finish STEP 1 & 2: Determine which transaction logs are needed for restore and their locations"

info "Start STEP 3: Restore archive transaction logs, if any"
info "Finish STEP 3: Restore archive transaction logs, if any"

info "Start STEP 4 & 5: Login again and Restore transactions from the current log files"
info "Finish STEP 4 & 5: Login again and Restore transactions from the current log files"

info "Start STEP 6: Finalize by commitRestore"
info "Finish STEP 6: Finalize by commitRestore"


info "Finish: Restore TRANLOGS"




