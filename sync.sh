#!/bin/bash
#########################################################################
# File Name: sync.sh
# Created Time: 2020年11月01日 星期日 00时38分28秒
#########################################################################
export DISPLAY=:0.0
source /etc/profile
print_date(){
	date +'%Y/%m/%d/%R'
}

notify-send sync "sync任务开始"

# Music
rclone sync -Pv od:/Backups/Music /home/rewrite/Music > /tmp/log/sync.log 2>&1
# live_wallpaper
rclone sync -Pv /home/rewrite/Videos/live_wallpaper od:/Backups/live_wallpaper >> /tmp/log/sync.log 2>&1

echo `print_date` -sync完成 >> /tmp/log/sync.log
notify-send sync "sync任务完成"
