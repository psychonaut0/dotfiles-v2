#!/bin/bash

limit=$1
volume=$(pactl -- get-sink-volume 0 | grep -Po '/\s+\K\d{1,3}(?=%)' | uniq)

if [ "$volume" -le "$limit" ]; then
  pactl -- set-sink-volume 0 +1% > /dev/null
fi
