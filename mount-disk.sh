#!/bin/bash

read -p "挂载(m)or移除(u):" mode
if [ $mode == m ];then
	echo "查看磁盘信息"
	sudo fdisk -l | grep /dev
	read -p "输入磁盘位置(/dev后的位置):" disk
	read -p "输入挂载位置(1/2/3):" dir
	sudo mount /dev/$disk /home/rewrite/disks/$dir
	df -h | grep /disk
elif [ $mode == u ];then
	if [ "$(df -h | grep /disk)" != "" ];then
		echo "查看挂载信息"
		df -h | grep /disk
		read -p "输入需卸载磁盘的挂载位置(1/2/3):" dir
		sudo umount /home/rewrite/disks/$dir
		df -h | grep /disk
	else
		echo "无可卸载u盘,退出..."
	fi
else
	echo "指令错误,退出脚本"
fi
