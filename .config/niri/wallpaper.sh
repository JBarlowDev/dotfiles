#!/bin/sh

# initial="$(find -L ~/Wallpapers -maxdepth 1 -type f | shuf -n 1)"
#
# swww img "$initial" 

awww img $HOME/Wallpapers/wallhaven-1jod8v.png

while true; do 


  if [[ $1 -eq 1 ]]; then
    wallpaper="$(find -L ~/Wallpapers/extra/ -maxdepth 1 -type f | shuf -n 1)"
  else
    wallpaper="$(find -L ~/Wallpapers -maxdepth 1 -type f | shuf -n 1)"
  fi

  awww img "$wallpaper" --transition-type wipe

  sleep 60

done
