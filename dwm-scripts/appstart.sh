#!/bin/bash

picom -o 0.9 -i 0.6 --detect-rounded-corners --vsync --blur-background-fixed -f -D 5 -c -b
~/scripts/clashr.sh
fcitx &
xdman &
nm-applet &
wmname LG3D
#tim所需
nohup /usr/lib/gsd-xsettings > ~/scripts/log/gsd.log 2>&1 &
