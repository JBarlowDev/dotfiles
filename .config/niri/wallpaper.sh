#!/bin/sh

while true; do
  wallpaper="$(find -L ~/wallpapers/current/ -maxdepth 1 -type f | shuf -n 1)"
  awww img "$wallpaper" --transition-type wipe
  sleep 60
done
