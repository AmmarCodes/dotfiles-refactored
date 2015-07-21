
#!/bin/sh

#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)
#

export GTK2_RC_FILES="$HOME/.gtkrc-2.0"

xrdb -load /home/ammar/dotfiles/xresources/Xresources

# DEFAULT_SESSION=bspwm-session #i3 #xfce4-session #budgie-session
# case $1 in
#   xfce|xfce4 ) exec dbus-launch xfce4-session ;;
#   budgie     ) exec dbus-launch budgie-session ;;
#   i3|i3wm    ) exec dbus-launch i3;;
#   *          ) exec dbus-launch $DEFAULT_SESSION ;;
# esac
#
# exec $1

sxhkd &
redshift &
exec dbus-launch --exit-with-session bspwm
