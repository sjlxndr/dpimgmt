#!/bin/bash
#
# dpiminus.sh
#
# Bind this to a convenient key combination, like <Super><->

current=`xfconf-query -c xsettings -p /Xft/DPI`
next=$(($current-1))

if [ $current -ne "-1" ]
then
    xfconf-query -c xsettings -p /Xft/DPI -s $next
else
    xfconf-query -c xsettings -p /Xft/DPI -s 94
fi
