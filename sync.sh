#!/bin/bash
#########################################################################
# File Name: sync.sh
# Created Time: 2020年11月01日 星期日 00时38分28秒
#########################################################################
date=`date`
rclone copy /home/rewrite/Music/CloudMusic gd:/Music -v >> /tmp/log/sync.log 2>&1
echo $date >> /tmp/log/sync.log
