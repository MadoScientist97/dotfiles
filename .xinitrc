if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi
export XDG_SESSION_DESKTOP=i3
prime-offload
/usr/bin/numlockx on
xrdb -merge ~/.Xresources
exec i3
