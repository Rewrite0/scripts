#!/bin/bash
#########################################################################
# File Name: pull_gd.sh
# Created Time: 2021年03月02日 星期二 16时47分20秒
#########################################################################
rm /tmp/log/pull.log
#pull音乐
rclone copy mega:/Music /home/rewrite/Music -Pv --cache-chunk-size 128M >> /tmp/log/pull.log 2>&1
#pull视频壁纸
rclone copy mega:/live_wallpaper /home/rewrite/Videos/live_wallpaper -Pv --cache-chunk-size 128M >> /tmp/log/pull.log 2>&1

echo `date` pull完成 >> /tmp/log/pull.log
