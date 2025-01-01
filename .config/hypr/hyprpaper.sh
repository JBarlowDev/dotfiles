#!/bin/sh

monitor=`hyprctl monitors | grep Monitor | awk '{print $2}'`

initial="$(find -L ~/wallpaper -type f | shuf -n 1)"

hyprctl hyprpaper preload "$initial"
hyprctl hyprpaper wallpaper "$monitor,$initial"

while true; do
  wallpaper="$(find -L ~/wallpaper -type f | shuf -n 1)"

  hyprctl hyprpaper preload "$wallpaper"
  hyprctl hyprpaper wallpaper "$monitor,$wallpaper"

  sleep 60

  hyprctl hyprpaper unload "$wallpaper"
done

