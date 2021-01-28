#!/bin/bash
#########################################################################
# File Name: shellclash_install.sh
# Created Time: 2021年01月16日 星期六 21时37分25秒
#########################################################################
sh -c "$(curl -kfsSl https://cdn.jsdelivr.net/gh/juewuy/ShellClash@master/install.sh)" && source /etc/profile &> /dev/null
