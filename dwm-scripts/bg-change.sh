#!/bin/bash
#########################################################################
# File Name: bg-change.sh
# Created Time: 2020年10月11日 星期日 22时40分22秒
#########################################################################
shopt -s nullglob
cd ~/Pictures/wallpaper

files=()
for i in *.jpg *.png; do
	[[ -f $i ]] && files+=("$i")
done
range=${#files[@]}

((range)) && feh --bg-scale "${files[RANDOM % range]}"
