#新配置文件路径
new_file_cfg_dir=~/config.yaml
#配置文件放置路径
cfg_dir=~/.config/clash
#原配置文件路径
file_cfg_dir=~/.config/clash/config.yaml
#######################################################################
echo "正在下载配置"
wget http://107.172.86.42:25500/sub?target=clashr -O ~/config.yaml
if [ -e ${new_file_cfg_dir} ];then
	echo "配置文件存在"
	rm -rf ${file_cfg_dir}
	mv ${new_file_cfg_dir} ${cfg_dir}
	ps -fe|grep clashr |grep -v grep
	if [ $? -ne 0  ];then
		echo "clashr没有运行"
		echo "准备启动clashr"
		~/scripts/clashr.sh
		echo "clashr配置切换完成!"
	else
		echo "clashr正在运行"
		echo "准备重启clashr"
		pkill clashr
		~/scripts/clashr.sh
		echo "clashr配置切换完成!"
	fi	
else
	echo "配置文件不存在,退出脚本"
fi
