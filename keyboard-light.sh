#!/bin/bash
#########################################################################
# File Name: keyboard-light.sh
# Created Time: 2020年12月11日 星期五 17时40分33秒
#########################################################################
if [ ! $1 ];
then
	conn="on"
else
	conn=$1
fi
  
if [ "$conn" = "on" ] ||[ "$conn" = "ON" ]; 
then  
    xset led  named 'Scroll Lock'  
	echo "Scroll Lock on ok^_^"
elif [ "$conn" = "off" ] ||[ "$conn" = "OFF" ]; 
then  
    xset -led named 'Scroll Lock'  
	echo "Scroll Lock off ok^_^"
else  
    echo "ERROR! Pleace run: $0 or $0 on/off"  
    exit 1  
fi  
exit 0
