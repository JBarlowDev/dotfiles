#!/bin/sh

# initial="$(find -L ~/Wallpapers -maxdepth 1 -type f | shuf -n 1)"
#
# swww img "$initial" 

while true; do 


  if [[ $1 -eq 1 ]]; then
    wallpaper="$(find -L ~/Wallpapers/extra/ -maxdepth 1 -type f | shuf -n 1)"
  else
    wallpaper="$(find -L ~/Wallpapers -maxdepth 1 -type f | shuf -n 1)"
  fi

  swww img "$wallpaper" --transition-type wipe

  sleep 60

done
