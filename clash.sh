#!/bin/bash
#########################################################################
# File Name: clashr.sh
# Created Time: 2020年07月14日 星期二 18时04分23秒
#########################################################################
a=$1
start(){
	nohup clash > /tmp/log/clash.log 2>&1 &
	sleep 2
	cat /tmp/log/clash.log
}

if [ -z $a ];then
	start
elif [ $a == restart ];then
	killall clash
	start
elif [ $a == status ];then
	cat /tmp/log/clash.log
fi
