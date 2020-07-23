#!/bin/bash
#########################################################################
# File Name: clashr.sh
# Created Time: 2020年07月14日 星期二 18时04分23秒
#########################################################################
a=$1
start(){
	rm -rf ~/scripts/log/clash.log
	nohup ~/prog/clash > ~/scripts/log/clash.log 2>&1 &
	sleep 2
	cat ~/scripts/log/clash.log
}

if [ -z $a ];then
	start
elif [ $a == restart ];then
	killall clash
	start
elif [ $a == status ];then
	cat ~/scripts/log/clash.log
fi
