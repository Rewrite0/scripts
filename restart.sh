#!/bin/bash

#clashr
/home/rewrite/scripts/clashr.sh
echo "启动clashr"
sleep 1m
#1
#rclone mount mido:/home/re/SDfiles /home/rewrite/Videos/mido/sdfiles &
#2
rclone mount mido:/www/wwwroot/192.168.3.10/files /home/rewrite/Videos/mido/files &
echo "挂载mido"
