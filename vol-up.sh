#!/bin/bash

# /usr/bin/amixer -qM set Master 5%+ umute
pamixer -i 5
dunstctl close-all
dunstify "当前音量: $(ponymix get-volume)%" -h int:value:"$(ponymix get-volume)"
