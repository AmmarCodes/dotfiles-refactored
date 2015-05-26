
#!/bin/sh

#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)
#

export GTK2_RC_FILES="$HOME/.gtkrc-2.0"

xrdb -load /home/ammar/dotfiles/xresources/Xresources

DEFAULT_SESSION=xfce4-session #budgie-session
case $1 in
  xfce) exec dbus-launch xfce4-session ;;
  budgie) exec dbus-launch budgie-session ;;
  *) exec dbus-launch  $DEFAULT_SESSION ;;
esac

exec $1

