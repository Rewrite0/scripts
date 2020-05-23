#!/bin/bash

read -p "挂载files(1)挂载sd(2)全挂载(3)" disk
if [ $disk == 1 ];then
	rclone mount mido:/www/wwwroot/192.168.3.10/files /home/rewrite/disks/mido/files &
	df -h | grep mido
elif [ $disk == 2 ];then
	rclone mount mido:/home/re/SDfiles /home/rewrite/disks/mido/sdfiles &
	df -h | grep mido
elif [ $disk == 3 ];then
	rclone mount mido:/home/re/SDfiles /home/rewrite/disks/mido/sdfiles &
	rclone mount mido:/www/wwwroot/192.168.3.10/files /home/rewrite/disks/mido/files &
	df -h | grep mido
else
	echo "exit..."
fi
