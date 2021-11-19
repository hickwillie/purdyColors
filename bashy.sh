#!/bin/bash

eval "$(dircolors ~/purdyColors/dircolors)"
srvType=""
color_pink="\[\e[35m\]"
color_blue="\[\e[34m\]"
color_red="\[\e[31m\]"
color_cyan="\[\e[36m\]"
color_green="\[\e[32m\]"
color_yellow="\[\e[33m\]"
color_whitepink="\[\033[47m\]\[\033[14;35m\]"
color_post="\[\e[m\]"

dateTime="${color_pink}[${color_post}${color_red}\d${color_post} ${color_red}\A${color_post}${color_pink}]${color_post}"

if [[ "$USER" == "root" ]];
then
        user="${color_red}***${color_post}${color_whitepink}___ROOT___${color_post}${color_red}***${color_post}"
else
        user="${color_cyan}\u${color_post}"
fi

srvNamePath="${color_pink}@${color_post}${color_green}\h${color_post}${color_pink}:${color_post}${color_yellow}\w${color_post} \n${color_pink}\$${color_post} "

if [[ "$HOSTNAME" == *"-d-"* ]];
then
        srvType="\[\e[32;40m\]dev${color_post}"
elif [[ "$HOSTNAME" == *"-r-"* ]];
then
        srvType="\[\e[33m\]***DR***${color_post}"
elif [[ "$HOSTNAME" == *"-c-"* ]];
then
        srvType="\[\e[33m\]***BC***${color_post}"
elif [[ "$HOSTNAME" == *"-z-"* ]];
then
        srvType="\[\e[35;44m\]proto${color_post}"
elif [[ "$HOSTNAME" == *"-u-"* ]];
then
        srvType="\[\e[37;40m\]uat${color_post}"
elif [[ "$HOSTNAME" == *"-n-"* ]];
then
        srvType="\[\e[32;40m\]nonprod${color_post}"
else
        srvType="\[\e[33m\]***PROD***${color_post}"
fi


export PS1="\n${srvType} ${dateTime} ${user}${srvNamePath}"
