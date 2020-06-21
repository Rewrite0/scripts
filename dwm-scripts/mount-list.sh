#!/bin/bash
#########################################################################
# File Name: mount-list.sh
# Created Time: 2020年05月23日 星期六 18时10分50秒
#########################################################################
rclone mount jianguo:/Database ~/disks/database --vfs-cache-mode writes &
