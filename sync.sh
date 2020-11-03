#!/bin/bash
#########################################################################
# File Name: sync.sh
# Created Time: 2020年11月01日 星期日 00时38分28秒
#########################################################################
print_date(){
	date +'%Y/%m/%d/%R'
}
#备份音乐
rclone copy /home/rewrite/Music/CloudMusic gd:/Music -Pv --cache-chunk-size 128M > /tmp/log/sync.log 2>&1
#备份视频壁纸
rclone copy /home/rewrite/Videos/live_wallpaper gd:/live_wallpaper -Pv --cache-chunk-size 128M > /tmp/log/sync.log 2>&1

echo `print_date`  备份完成
zenity --info --text "sync定时任务完成"
