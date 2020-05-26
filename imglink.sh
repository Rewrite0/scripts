file=$(realpath $1)
file_dir=${file#*Bed}
dir=https://cdn.jsdelivr.net/gh/Rewrite0/FigureBed@master
link=$dir$file_dir
echo $link
echo $link | xclip -selection clipboard
