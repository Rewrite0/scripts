#!/bin/bash
#########################################################################
# File Name: clashr.sh
# Created Time: 2020年07月14日 星期二 18时04分23秒
#########################################################################
a=$1
b=`find /bin /usr/bin /usr/local/bin | grep clash`
start(){
	nohup clash > /tmp/log/clash.log 2>&1 &
	sleep 2
	cat /tmp/log/clash.log
}

if [ -z $a ];then
	if [ -z $b ];then
		echo "clash未安装，准备下载安装。"
		bash ./clash_install.sh
		echo "安装完成，启动"
		mkdir /tmp/log
		start
	else
		start
	fi
elif [ $a == restart ];then
	killall clash
	start
elif [ $a == status ];then
	cat /tmp/log/clash.log
fi
