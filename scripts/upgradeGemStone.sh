#! /bin/sh
# Requires GS_HOME variable defined
# Upgrade GemStone current version to a target version
PROGRAM_NAME="upgradeGemStone"
source ./common.sh
usage() {
  error "Usage: ${PROGRAM_NAME} "
}

if [ "$1" = "-h" ] || [ "$1" = "--help" ]; then
  echo "Usage: upgradeGemStone "
  echo ""; 
  echo "The environment variable GS_HOME must be set";
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

info "Start: GemStone Upgrade"

info "Start STEP 1: Check for use of deprecated methods"
#This is a previous step to execute this script
#Here is assumed that methods that call deprecated methods has already been upgraded
#Inside a Gem:
# 1) Deprecated doErrorOnDeprecated (or similar method or combine various methods)
# 2) Run all tests and check if any is failing
# 3) Update all calls to the deprecated methods
# 4) Deprecated doNothingOnDeprecated 
# Check "upgradeGemStone script" on documentation for more techniques to detect deprecated methods
info "Finish STEP 1: Check for use of deprecated methods"

info "Start STEP 2: File out modifications to GemStone classes"
#These modifications are stored in separated packages
#For now this step can be skiped
info "Finish STEP 2: File out modifications to GemStone classes"

info "Start: GemStone Prepare for Upgrade"

info "Start STEP 1: Install and configure GemStone/S 64 Bit new version"
info "Finish STEP 1: Install and configure GemStone/S 64 Bit new version"

info "Start STEP 2: Reset SystemUser password"
info "Finish STEP 2: Reset SystemUser password"

info "Start STEP 3: Stop user activity"
info "Finish STEP 3: Stop user activity"

info "Start STEP 4: Shut down the repository"
info "Finish STEP 4: Shut down the repository"

info "Start STEP 5: Set up the version 3.6 environment"
info "Finish STEP 5: Set up the version 3.6 environment"

info "Start STEP 6: Copy extent files"
info "Finish STEP 6: Copy extent files"

info "End: GemStone Prepare for Upgrade"

info "Start: Perform the Upgrade"

info "Start STEP 1: Start the Stone new version"
info "Finish STEP 1: Start the Stone new version"

info "Start STEP 2: Upgrade image"
info "Finish STEP 2: Upgrade image"

info "Start STEP 3: Restore System Account passwords"
info "Finish STEP 3: Restore System Account passwords"

  info "Finish: Perform the Upgrade"
  
  info "Start: GsDevKit Upgrade"
  
  info "Start STEP 1: Ensure that GemStone new version is installed and your repository upgraded"
  info "Finish STEP 1: Ensure that GemStone new version is installed and your repository upgraded"
  
  info "Start STEP 2: If necessary, customize the upgrade instructions"
  info "Finish STEP 2: If necessary, customize the upgrade instructions"
  
  info "Start STEP 3: Perform the Upgrade"
  info "Finish STEP 3: Perform the Upgrade"
  
  info "Start STEP 4: Load your Application Code"
  info "Finish STEP 4: Load your Application Code"  
  
  info "Finish: GsDevKit Upgrade"

info "Post-upgrade Application Code Modifications"

info "Start STEP 1: Reinstall any other GemStone products that modify kernel classes"
info "Finish STEP 1: Reinstall any other GemStone products that modify kernel classes"

info "Start STEP 2: File in Kernel class changes"
info "Finish STEP 2: File in Kernel class changes"

info "Start: Backup Upgraded Respository"
info "Finish: Backup Upgraded Respository"
