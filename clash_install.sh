#!/bin/bash
#########################################################################
# File Name: clash_install.sh
# Created Time: 2021年01月28日 星期四 21时43分28秒
#########################################################################
user=`whoami`
read -p "armv8(1) or amd64(2): " architecture

if [ $architecture == 1 ];then
	armv8=$(curl https://api.github.com/repos/Dreamacro/clash/releases/latest | grep armv8 | awk '{print $2}' | grep https | sed 's/\"//g')
	wget $armv8
elif [ $architecture == 2 ];then
	amd64=$(curl https://api.github.com/repos/Dreamacro/clash/releases/latest | grep linux-amd64 | awk '{print $2}' | grep https | sed 's/\"//g')
	wget $amd64
fi

file=`ls | grep .gz`
gunzip $file
mv `ls | grep clash-linux` clash
chmod +x clash

if [ $user == root ];then
        mv clash /usr/local/bin
else
        sudo mv clash /usr/local/bin
fi
