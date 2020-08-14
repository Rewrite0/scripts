rm -rf ~/scripts/log/xwinwrap.log
nohup xwinwrap -fs -nf -ov -- mplayer -af volume=-200 -shuffle -slave -input file=/tmp/wallpaper -loop 0 -wid WID -nolirc `find ~/Videos/live_wallpaper -type f` > ~/scripts/log/xwinwrap.log 2>&1 &
