#!/bin/bash
shopt -s nullglob
cd ~/Pictures/wallpaper
while true; do
	files=()
	for i in *.jpg *.png; do
		[[ -f $i ]] && files+=("$i")
	done
	range=${#files[@]}
	pkill swaybg

	((range)) && swaybg -m fill -i "${files[RANDOM % range]}" &

	sleep 10m
done
