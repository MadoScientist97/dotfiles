#!/bin/bash
PS4='+ $EPOCHREALTIME $BASH_SOURCE:$LINENO:'  # Used by xtrace
exec >>"$HOME/.xlock/run.log" 2>&1
set -x
printf 'Starting\n'
WorkingD=$HOME/.xlock
icon=$WorkingD/pics/lock.png
pics=$(find $WorkingD/pics/ -type f | shuf -n 1)
color="$(openssl rand -hex 3)"
res=$(xrandr | grep -F '*' | awk '{print $1}')
convert $pics -resize $res $icon -gravity  center -composite -matte $WorkingD/.temp.png &
wait
i3lock -c $color -i $WorkingD/.temp.png
/usr/bin/rm $WorkingD/.temp.png

# log cleanup
WorkingD=$HOME/.xlock
numlines=$(wc -l "$WorkingD/run.log" | awk '{print $1}')
echo $numlines
if (( $numlines > 10000 )) 
then                                                                                      
  mv $WorkingD/run.log $WorkingD/run.log.big                                                                            
  tail -10000 $WorkingD/run.log.big > $WorkingD/run.log                                                                 
  /usr/bin/rm $WorkingD/run.log.big                                                                 
fi
