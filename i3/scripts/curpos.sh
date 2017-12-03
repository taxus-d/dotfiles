#!/bin/sh
# Get hex rgb color under mouse cursor, put it into clipboard and create a
# notification.

# xdotool вернёт какие-то координаты, eval их
eval $(xdotool getmouselocation --shell)
echo +$X+$Y
