#! /bin/sh
# Requires GS_HOME variable defined
# Read GemStone options from confi files

GS_OPTION_MATCHER='^[[:space:]]*([[:alnum:]_]+)[[:space:]]*=[[:space:]]*(.*);'
CONFIG_FILE=$1;
GS_OPTION=$2;
GS_OPTION_VALUE=""
while read -n1 char; do
  if [ "$char" = "#" ]; then
    read line
    GS_OPTION_VALUE=""
  else
    if [ "$char" = ";" ]; then
      GS_OPTION_VALUE+=";"
      if [[ ${GS_OPTION_VALUE} =~ ${GS_OPTION_MATCHER} && ${BASH_REMATCH[1]} == ${GS_OPTION} ]]; then
          echo "${BASH_REMATCH[2]}"
      fi   
      GS_OPTION_VALUE=""
    else
      GS_OPTION_VALUE+="$char"
    fi    
  fi
done < ${CONFIG_FILE}
