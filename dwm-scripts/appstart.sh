#!/bin/bash

picom -o 0.9 -i 0.6 --detect-rounded-corners --vsync --blur-background-fixed -f -D 5 -c -b
~/scripts/clash.sh
fcitx &
xdman &
nm-applet &
wmname LG3D
