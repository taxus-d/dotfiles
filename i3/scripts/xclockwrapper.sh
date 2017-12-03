#!/bin/sh

GEOM_X=315
GEOM_Y=315
CURCOL=$(~/.i3/scripts/curcol.sh)
eval $(xdotool getmouselocation --shell)

GEOM=${GEOM_X}x${GEOM_Y}+$(($X - $GEOM_X/2))+$(($Y - $GEOM_Y/2))
exec xclock -bg $CURCOL -bd $CURCOL -geom $GEOM -name transp

