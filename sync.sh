#!/bin/bash
#########################################################################
# File Name: sync.sh
# Created Time: 2020年11月01日 星期日 00时38分28秒
#########################################################################
export DISPLAY=:0.0
print_date(){
	date +'%Y/%m/%d/%R'
}

#push
./push_gd.sh
#pull
./pull_gd.sh

echo `print_date` -sync完成 >> /tmp/log/sync.log
notify-send sync "sync任务完成"
