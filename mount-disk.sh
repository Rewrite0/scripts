#!/bin/bash

user=`whoami`

read -p "挂载(m)or移除(u):" mode
if [ $mode == m ];then
	echo "查看磁盘信息"
	sudo fdisk -l | grep /dev
	read -p "输入磁盘位置(/dev后的位置):" disk
	read -p "输入挂载位置(1/2):" dir
	sudo mount -o uid=$user,gid=$user /dev/$disk /mnt/$dir
	df -h | grep /mnt
elif [ $mode == u ];then
	if [ "$(df -h | grep /mnt)" != "" ];then
		echo "查看挂载信息"
		df -h | grep /mnt
		read -p "输入需卸载磁盘的挂载位置(1/2):" dir
		sudo umount /mnt/$dir
		df -h | grep /mnt
	else
		echo "无可卸载u盘,退出..."
	fi
else
	echo "指令错误,退出脚本"
fi
