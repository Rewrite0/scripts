#!/bin/bash
#########################################################################
# File Name: /home/rewrite/scripts/trayer.sh
# Created Time: 2020年06月14日 星期日 17时48分12秒
#########################################################################
killall trayer
if [ $? != 0 ];then
	trayer --transparent true --expand false --align right --width 10 --height 25 --edge top --tint 10
fi
