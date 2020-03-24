#!/bin/sh
# Requires GS_HOME variable defined

if [ "$1" = "-h" ] || [ "$1" = "--help" ]; then
  echo "Usage: migrate-from-mysql-80.sh STONE_NAME "
  echo "Migrate from MySQL v8.0 all Orbeon Forms to GemStone/S [STONE_NAME]";
  echo "example: sh migrate-all-mysql-80.sh devKit_351 "
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
migrator := OrbeonMySQLMigrator new.
migrator migrateAll.
System commit.
%
exit
EOF
echo
date
echo "MYSQL migration Finished"
echo