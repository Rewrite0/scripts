#!/bin/bash
#########################################################################
# File Name: pull_gd.sh
# Created Time: 2021年03月02日 星期二 16时47分20秒
#########################################################################
#pull音乐
rclone copy gd:/Music /home/rewrite/Music/CloudMusic -Pv --cache-chunk-size 128M >> /tmp/log/pull.log 2>&1
#pull视频壁纸
rclone copy gd:/live_wallpaper /home/rewrite/Videos/live_wallpaper -Pv --cache-chunk-size 128M >> /tmp/log/pull.log 2>&1
