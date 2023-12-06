#!/bin/bash
#
# dpitoggle.sh
#
# bind this to a convenient key combination, like <Super><0>

current=`xfconf-query -c xsettings -p /Xft/DPI`

if [ $current -ne "95" ]
then
    xfconf-query -c xsettings -p /Xft/DPI -s "95"
else
    xfconf-query -c xsettings -p /Xft/DPI -s 106
fi
