#!/bin/bash
#########################################################################
# File Name: push_gd.sh
# Created Time: 2021年03月02日 星期二 16时46分20秒
#########################################################################
#push音乐
rclone copy /home/rewrite/Music mega:/Music -Pv --cache-chunk-size 128M > /tmp/log/push.log 2>&1
rclone copy /home/rewrite/Music od:/Backups/Music -Pv --cache-chunk-size 128M >> /tmp/log/push.log 2>&1
rclone copy /home/rewrite/Music e5:/Backups/Music -Pv --cache-chunk-size 128M >> /tmp/log/push.log 2>&1
#push视频壁纸
rclone copy /home/rewrite/Videos/live_wallpaper mega:/live_wallpaper -Pv --cache-chunk-size 128M >> /tmp/log/push.log 2>&1
rclone copy /home/rewrite/Videos/live_wallpaper od:/Backups/live_wallpaper -Pv --cache-chunk-size 128M >> /tmp/log/push.log 2>&1
rclone copy /home/rewrite/Videos/live_wallpaper e5:/Backups/live_wallpaper -Pv --cache-chunk-size 128M >> /tmp/log/push.log 2>&1

echo `date` push完成 >> /tmp/log/push.log
