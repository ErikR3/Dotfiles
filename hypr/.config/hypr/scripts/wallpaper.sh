#!/bin/bash
awww-daemon &

while ! hyprctl monitors | grep -q "DP-3"; do
    sleep 0.5
done

awww img /home/erik/wallpapers/wallpaper.png --outputs eDP-1
awww img /home/erik/wallpapers/wallpaper.png --outputs DP-3
