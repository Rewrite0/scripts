file=$(realpath $1)
md=$2
file_dir=${file#*Bed}
url=//cdn.jsdelivr.net/gh/Rewrite0/FigureBed@master
link=$url$file_dir
mdlink="![<++>]("$link")"
if [ "$md" == "md" ];then
	echo $mdlink
	echo $mdlink | xclip -selection clipboard
else
	echo $link
	echo $link | xclip -selection clipboard
fi
