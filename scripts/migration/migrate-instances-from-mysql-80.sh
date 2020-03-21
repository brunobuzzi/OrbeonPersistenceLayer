#!/bin/sh
# Requires GS_HOME variable defined

if [ "$1" = "-h" ] || [ "$1" = "--help" ]; then
  echo "Usage: migrate-instances-from-mysql-80.sh STONE_NAME APPLICATION_NAME FORM_NAME VERSION TIME_STAMP"
  echo "Migrate from MySQL v8.0 Orbeon Forms Instances in applicaiton named [APPLICATION_NAME] of form named [FORM_NAME] version [VERSION] from [TIME_STAMP] to GemStone/S [STONE_NAME]";
  echo "example: sh migrate-instances-from-mysql-80.sh devKit_351 sales sales-item-form 01/01/2018"
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
echo "MYSQL migration Started"
echo
$GS_HOME/bin/startTopaz $1 -il <<EOF
set user DataCurator password swordfish gemstone $1
login
exec
| migrator |
OrbeonHandler default mySqlReader: OrbeonMySQL80 new.
migrator := OrbeonMySQLMigrator forApplicationNamed: '$2'.
migrator importFormInstancesOf: '$3' version: $4 from: (TimeStamp fromString: '$5').
System commit.
%
exit
EOF
echo
date
echo "MYSQL migration Finished"
echo