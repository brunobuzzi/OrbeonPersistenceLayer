#! /bin/sh
#set -x
$GS_HOME/bin/startTopaz devKit_33 -il <<EOF >>MFC.out
set user DataCurator password swordfish gemstone devKit_33
login
exec 
System beginTransaction.
OrbeonLayerAppLinuxScripts stopZnPortsScript.
System commit.
%
exit
EOF