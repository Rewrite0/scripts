#!/bin/bash
#########################################################################
# File Name: clashr.sh
# Created Time: 2020年07月14日 星期二 18时04分23秒
#########################################################################
a=$1
start(){
	rm -rf ~/scripts/log/clashr.log
	nohup ~/prog/clashr/clashr > ~/scripts/log/clashr.log 2>&1 &
	sleep 2
	cat ~/scripts/log/clashr.log
}

if [ -z $a ];then
	start
elif [ $a == restart ];then
	killall clashr
	start
elif [ $a == status ];then
	cat ~/scripts/log/clashr.log
fi
