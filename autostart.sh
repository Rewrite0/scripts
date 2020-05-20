#!/bin/bash

xrandr --output VGA-1-1 --left-of LVDS-1-1 --auto
xrandr --output VGA-1 --left-of LVDS-1 --auto
xrandr --output VGA1 --left-of LVDS1 --auto
/home/rewrite/scripts/bg-autochange.sh &
/home/rewrite/scripts/dwm-status.sh &
picom -o 0.9 -i 0.6 --detect-rounded-corners --vsync --blur-background-fixed -f -D 5 -c -b
nohup /usr/lib/gsd-xsettings > /home/rewrite/scripts/log/gsd.log 2>&1 &
/home/rewrite/scripts/clashr.sh
#rclone mount mido:/home/re/SDfiles /home/rewrite/Videos/mido/sdfiles &
rclone mount mido:/www/wwwroot/192.168.3.10/files /home/rewrite/Videos/mido/files &
/home/rewrite/scripts/appstart.sh
wmname LG3D

