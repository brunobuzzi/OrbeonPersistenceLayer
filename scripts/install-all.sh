#!/bin/sh
# Requires GS_HOME variable defined

if [ "$1" = "-h" ] || [ "$1" = "--help" ]; then
  echo "Usage: install-all STONE_NAME "
  echo "Install the entire BPM application on Stone named STONE_NAME"; 
  echo "The environment variable GS_HOME must be set";    
  exit 0
fi
if [ -z ${GS_HOME+x} ]; then
  echo "GS_HOME variable is unset. Set this variable first and try again...";
  exit 0
fi

if sh checkIfStoneExist.sh "$1"; 
  then echo "" 
  else 
    echo ;
    echo "Topaz for Stone named [$1] failed to start";
    echo;
    exit 0
fi
echo
date
echo "Start: BPM Packages Installation"
echo
$GS_HOME/bin/startTopaz $1 -il <<EOF
set user DataCurator password swordfish gemstone $1
login
exec
Gofer new
  package: 'GsUpgrader-Core';
  url: 'http://ss3.gemtalksystems.com/ss/gsUpgrader';
  load.
(Smalltalk at: #GsUpgrader) upgradeGrease.
GsDeployer deploy: [
  Metacello new
    baseline: 'Seaside3';
    repository: 'github://SeasideSt/Seaside:master/repository';
    onLock: [:ex | ex honor];
    load: 'CI' ].
GsDeployer deploy: [
  Metacello new
    baseline: 'AbstractApplicationObjects';
    repository: 'github://brunobuzzi/AbstractApplicationObjects:master/repository';
    onLock: [:ex | ex honor];
    load ].   
GsDeployer deploy: [
  Metacello new
    baseline: 'Sewaf';
    repository: 'github://brunobuzzi/SEWAF:master/repository';
    onLock: [:ex | ex honor];
    load ].      
GsDeployer deploy: [
  Metacello new
    baseline: 'OrbeonPersistenceLayer';
    repository: 'github://brunobuzzi/OrbeonPersistenceLayer:master/repository';
    onLock: [:ex | ex honor];
    load ].   
%
exit
EOF
echo
date
echo "Finish: BPM Packages Installation"
echo
date
echo "Start: HighchartsSt Packages Installation"
echo
# Highcharts is installed locally
# Check: https://github.com/brunobuzzi/BpmFlow/issues/482
cd $GS_HOME/shared/repos
git clone https://github.com/brunobuzzi/HighchartsSt.git
cd HighchartsSt
git branch
git branch -a
git checkout origin/v6.0.1
git checkout v6.0.1
$GS_HOME/bin/startTopaz $1 -il -T 500000 <<EOF  
set user DataCurator password swordfish gemstone $1
login
exec
GsDeployer deploy: [
    Metacello new
         baseline: 'HighchartsSt';
         filetreeDirectory: '/home/gemstone/GsDevKit_home/shared/repos/HighchartsSt/repository';
         onLock: [:ex | ex honor];
		     onConflictUseLoaded;
         load.
].
%
exit
EOF
echo
date
echo "Finish: HighchartsSt Packages Installation"
echo
$GS_HOME/bin/startTopaz $1 -il <<EOF
set user DataCurator password swordfish gemstone $1
login
exec
OrbeonServerConfiguration default orbeonIP: 'WAOrbeonhttp://192.168.178.130'. "example IP"
OrbeonServerConfiguration default initializeDateFormat.
OrbeonServerConfiguration default initializeTimeFormat.
WAPersistenceOrbeonLayer register.
"To register a centralized Component to access the other applications"
WAOrbeonLogin register. "ipaddress:port/orbeon"
%
commit
exit
EOF
echo
echo "System Initialized"
echo