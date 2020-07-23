#新配置文件路径
new_file_cfg_dir=~/prog/subconverter/config.yaml
#配置文件放置路径
cfg_dir=~/.config/clash
#原配置文件路径
file_cfg_dir=~/.config/clash/config.yaml
#######################################################################
unset https_proxy && unset http_proxy
pkill clash
~/prog/subconverter/subconverter -g
echo "配置下载完成"
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
