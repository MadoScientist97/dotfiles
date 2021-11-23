#!/bin/bash
PS4='+ $EPOCHREALTIME $BASH_SOURCE:$LINENO:'  # Used by xtrace
exec >>"$HOME/.xlock/run.log" 2>&1
set -x
printf 'Starting\n'
WorkingD=$HOME/.xlock
icon=$WorkingD/lock.png
pics=$(find $WorkingD/pics/ -type f | shuf -n 1)
color="$(openssl rand -hex 3)"
convert $pics $icon -gravity center -composite -matte $WorkingD/.temp.png
i3lock -c $color -i $WorkingD/.temp.png
rm $WorkingD/.temp.png
