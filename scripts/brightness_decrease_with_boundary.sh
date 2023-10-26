#!/bin/bash

# This script is used to decrease brightness of the screen by 1 never going below 1.
# It is meant to be used with a keyboard shortcut.

# Get current brightness
BRIGHTNESS=$(brightnessctl g)

# Decrease brightness by 5%
BRIGHTNESS=$(echo "$BRIGHTNESS - 5" | bc)

# If brightness is less than 1, set it to 1
if [ "$BRIGHTNESS" -lt 1 ]; then
    BRIGHTNESS=1
fi

# Set brightness
brightnessctl s "$BRIGHTNESS"