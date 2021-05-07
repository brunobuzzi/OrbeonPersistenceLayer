#! /bin/sh
# Requires GS_HOME variable defined
# Write GemStone options to confi file

GS_OPTION_MATCHER='^[[:space:]]*([[:alnum:]_]+)[[:space:]]*=[[:space:]]*(.*);'
CONFIG_FILE=$1;
GS_OPTION=$2;
GS_NEW_VALUE=$3;

GS_OPTION_CURRENT_VALUE=$(./gs_read_conf_option.sh ${CONFIG_FILE} ${GS_OPTION})

sed -i "s/${GS_OPTION} = ${GS_OPTION_CURRENT_VALUE}/${GS_OPTION} = ${GS_NEW_VALUE}/g" $CONFIG_FILE
