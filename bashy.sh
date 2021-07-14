#!/bin/bash

eval "$(dircolors ~/purdyColors/dircolors)"
SRV_TYPE=""
PINK="\[\e[35m\]"
BLUE="\[\e[34m\]"
RED="\[\e[31m\]"
CYAN="\[\e[36m\]"
GREEN="\[\e[32m\]"
YELLOW="\[\e[33m\]"
WHITEPINK="\[\033[47m\]\[\033[14;35m\]"
POST="\[\e[m\]"

DATETIME="${PINK}[${POST}${BLUE}\d${POST} ${RED}\A${POST}${PINK}]${POST}"
if [[ "$USER" == "root" ]];
then
        USER="${RED}***${POST}${WHITEPINK}___ROOT___${POST}${RED}***${POST}"
else
        USER="${CYAN}\u${POST}"
fi
SRV_NAME_PATH="${PINK}@${POST}${GREEN}\h${POST}${PINK}:${POST}${YELLOW}\w${POST} \n${PINK}\$${POST} "
if [[ "$HOSTNAME" == *"-d-"* ]];
then
        SRV_TYPE="\[\e[32;40m\]dev\[\e[m\]"
elif [[ "$HOSTNAME" == *"-r-"* ]];
then
        SRV_TYPE="\[\e[33m\]***DR*** \[\e[m\] "
elif [[ "$HOSTNAME" == *"-c-"* ]];
then
        SRV_TYPE="\[\e[33m\]***BC***\[\e[m\] "
elif [[ "$HOSTNAME" == *"-z-"* ]];
then
        SRV_TYPE="\[\e[35;44m\]proto\[\e[m\] "
elif [[ "$HOSTNAME" == *"-u-"* ]];
then
        SRV_TYPE="\[\e[37;40m\]uat\[\e[m\] "
elif [[ "$HOSTNAME" == *"-n-"* ]];
then
        SRV_TYPE="\[\e[32;40m\]nonprod\[\e[m\] "
else
        SRV_TYPE="\[\e[33m\]***PROD***\[\e[m\] "
fi
export PS1="${SRV_TYPE} ${DATETIME} ${USER}${SRV_NAME_PATH}"
