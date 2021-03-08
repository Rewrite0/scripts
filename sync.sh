#!/bin/bash
#########################################################################
# File Name: sync.sh
# Created Time: 2020年11月01日 星期日 00时38分28秒
#########################################################################
export DISPLAY=:0.0
print_date(){
	date +'%Y/%m/%d/%R'
}

#pull
/home/rewrite/scripts/sync_pull.sh
#push
/home/rewrite/scripts/sync_push.sh

echo `print_date` -sync完成 >> /tmp/log/sync.log
notify-send sync "sync任务完成"
