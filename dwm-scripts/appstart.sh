#!/bin/bash

picom -o 0.9 -i 0.6 --detect-rounded-corners --vsync --blur-background-fixed -f -D 5 -c -b
nohup /usr/lib/gsd-xsettings > /home/rewrite/scripts/log/gsd.log 2>&1 &
/home/rewrite/scripts/clashr.sh
fcitx &
xdman &
wmname LG3D
