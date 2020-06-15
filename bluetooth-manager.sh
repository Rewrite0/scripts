#!/bin/bash
#########################################################################
# File Name: bluetooth-manager.sh
# Created Time: 2020年06月15日 星期一 19时26分10秒
#########################################################################
pulseaudio -k                   # 确保没有pulseaudio启动
pulseaudio --start              # 启动pulseaudio服务
blueman-manager
pavucontrol
