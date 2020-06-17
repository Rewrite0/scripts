#!/bin/bash
#########################################################################
# File Name: show-display.sh
# Created Time: 2020年05月23日 星期六 18时05分39秒
#########################################################################
xrandr --output VGA-1-1 --left-of LVDS-1-1 --auto
xrandr --output VGA-1 --left-of LVDS-1 --auto
xrandr --output VGA1 --left-of LVDS1 --auto

