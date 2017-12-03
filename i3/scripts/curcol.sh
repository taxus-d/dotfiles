#!/bin/sh
# Get hex rgb color under mouse cursor, put it into clipboard and create a
# notification.

# xdotool вернёт какие-то координаты, eval их
eval $(xdotool getmouselocation --shell)
# а тут и используем
IMAGE=`import -window root -depth 8 -crop 1x1+$X+$Y txt:-`
COLOR=`echo $IMAGE | grep -om1 '#\w\+'`
echo $COLOR
