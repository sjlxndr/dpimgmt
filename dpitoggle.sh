#!/bin/bash
#
# dpitoggle.sh
#
# bind this to a convenient key combination, like <Super><0>

current=`xfconf-query -c xsettings -p /Xft/DPI`
default="95" # 95 is default on my system; default also corresponds to "-1"
target="106"

if [ $current -ne $default ]
then
    xfconf-query -c xsettings -p /Xft/DPI -s $default
else
    xfconf-query -c xsettings -p /Xft/DPI -s $target
fi
