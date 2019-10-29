#Requires GS_HOME variable defined
#! /bin/sh
#set -x
$GS_HOME/bin/startTopaz devKit_33 -il <<EOF >>MFC.out
set user DataCurator password swordfish gemstone devKit_33
login
exec 
   | handler commitThreshold |

   commitThreshold := 65.
   handler := AlmostOutOfMemory addDefaultHandler: [ :ex | self halt ].
   SessionTemps current at: #'AlmostOutOfMemoryStaticException' put: handler.
   System signalAlmostOutOfMemoryThreshold: commitThreshold.

[OrbeonLayerAppLinuxScripts startAllScript]
  on: AlmostOutOfMemory enable
  do: [:ex | ex error: ex description]. 
%
exit
EOF