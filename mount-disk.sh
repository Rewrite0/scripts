#!/bin/bash

read -p "挂载(m)or移除(u):" mode
if [ $mode == m ];then
	echo "查看磁盘信息"
	sudo fdisk -l
	read -p "输入磁盘位置:" disk
	read -p "输入挂载位置(1/2/3):" dir
	sudo mount $disk /home/rewrite/disk/$dir
	df -h
elif [ $mode == u ];then
	echo "查看挂载信息"
	df -h
	read -p "输入需卸载磁盘的挂载位置(1/2/3):" dir
	sudo umount /home/rewrite/disk/$dir
	df -h
else
	echo "指令错误,退出脚本"
fi
