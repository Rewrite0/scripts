#!/bin/bash
#########################################################################
# File Name: mount-list.sh
# Created Time: 2020年05月23日 星期六 18时10分50秒
#########################################################################
rclone mount mido:/www/wwwroot/192.168.3.10/files ~/disks/mido/files &
rclone mount jianguo:/Database ~/disks/database --vfs-cache-mode writes &
rclone mount gd:/ ~/disks/google_drive \
 --umask 0000 \
 --default-permissions \
 --allow-non-empty \
 --allow-other \
 --transfers 4 \
 --buffer-size 32M \
 --low-level-retries 200
