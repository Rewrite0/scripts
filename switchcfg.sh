#新配置文件路径
new_file_cfg_dir=/home/rewrite/prog/subconverter/config.yaml
#配置文件放置路径
cfg_dir=/home/rewrite/.config/clash
#原配置文件路径
file_cfg_dir=/home/rewrite/.config/clash/config.yaml
#######################################################################
echo "正在下载配置"
/home/rewrite/prog/subconverter/subconverter -g
if [ -e ${new_file_cfg_dir} ];then
	echo "配置文件存在"
	rm -rf ${file_cfg_dir}
	mv ${new_file_cfg_dir} ${cfg_dir}
	ps -fe|grep clashr |grep -v grep
	if [ $? -ne 0  ];then
		echo "clashr没有运行"
		echo "准备启动clashr"
		/home/rewrite/scripts/clashr.sh
		echo "clashr配置切换完成!"
	else
		echo "clashr正在运行"
		echo "准备重启clashr"
		pkill clashr
		/home/rewrite/scripts/clashr.sh
		echo "clashr配置切换完成!"
	fi	
else
	echo "配置文件不存在,退出脚本"
fi
