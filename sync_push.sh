#!/bin/bash
#########################################################################
# File Name: push_gd.sh
# Created Time: 2021年03月02日 星期二 16时46分20秒
#########################################################################
rm /tmp/log/push.log
#push音乐
rclone copy /home/rewrite/Music mega:/Music -Pv --cache-chunk-size 128M >> /tmp/log/push.log 2>&1
#push视频壁纸
rclone copy /home/rewrite/Videos/live_wallpaper mega:/live_wallpaper -Pv --cache-chunk-size 128M >> /tmp/log/push.log 2>&1

echo `date` push完成 >> /tmp/log/push.log
