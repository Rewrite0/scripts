#!/bin/bash

mkdir /tmp/log
~/scripts/dwm-scripts/show-display.sh
~/scripts/dwm-scripts/dwm-status.sh &
~/scripts/dwm-scripts/bg-autochange.sh &
~/scripts/dwm-scripts/appstart.sh
~/scripts/dwm-scripts/mount-list.sh
