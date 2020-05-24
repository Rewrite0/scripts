file=$(ls | sed "s:^:`pwd`/:" | grep $1)
file_dir=${file#*Bed}
dir=https://cdn.jsdelivr.net/gh/Rewrite0/FigureBed
link=$dir$file_dir
echo $link
echo $link | xclip -selection clipboard
