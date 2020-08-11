#!/bin/bash

picom -o 0.9 -i 0.6 --detect-rounded-corners --vsync --blur-background-fixed -f -D 5 -c -b
~/scripts/clash.sh
fcitx5 &
xdman &
nm-applet &
blueman-applet &
wmname LG3D
