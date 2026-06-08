#!/bin/bash

# Check if a file path was passed
if [ -z "$1" ]; then
    echo "Usage: ./set_wall.sh /path/to/image.jpg"
    exit 1
fi

WALLPAPER="$1"

# 1. Ensure hyprpaper is actually running. If not, start it.
if ! pgrep -x "hyprpaper" > /dev/null; then
    hyprpaper &
    sleep 0.5 # Give it a split second to open its socket
fi

# 2. Tell hyprpaper to preload and set the wallpaper
hyprctl hyprpaper preload "$WALLPAPER"
hyprctl hyprpaper wallpaper "DP-2,$WALLPAPER"

# 3. Run matugen fully automatic (-m dark tells it to skip the interactive menu)
matugen -m dark image "$WALLPAPER"

# 4. Clean up old memory cache
hyprctl hyprpaper unload all
