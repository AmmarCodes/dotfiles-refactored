#!/bin/bash
# Multiple Exit Script using Zenity for non GDM installs
# Requires zenity and an edit to sudoers to allow all users to use the shutdown command
# As follows:
#
# Open a terminal
# EDITOR=nano
# sudo visudo
# Scroll to bottom of file and add this: (not the #)
# ALL ALL=NOPASSWD:/sbin/shutdown
# 
######## This part is the Exit Type picker  ##########

title="EXIT: What do you want to do ?"
exit_type=`zenity  --width="530" --height="320" --title="$title" --list --radiolist --column="Click Here" \
    --column="Exit Type" --column="Description" \
    TRUE "Logout" "Log Current User out and return to Login Screen"\
    FALSE "Suspend" "Suspend the PC"\
    FALSE "Hibernate" "Hibernate the PC"\
    FALSE "Reboot" "Reboot the PC"\
    FALSE "Shutdown" "Shutdown the PC"\
    FALSE "Cancel" "Cancel the Exit" \
    | sed 's/ max//g' `

echo "$exit_type chosen as the Exit Type!."

#user must select a target type (Check if they cancelled)
if [ ! "$exit_type" ]; then
    # zenity --error --title="Error" --text="You must make a selection!"
    exit
fi

######### This part takes the selection and applies it!  #############

# Edit this first section if not using openbox! #
if [ "$exit_type" = "Logout" ]
then
    # Do logout here.
    bspc quit && sleep 1 | zenity --progress --percentage=95 --title=Logout --auto-close --auto-kill --no-cancel --width=300

elif [ "$exit_type" = "Reboot" ]
then
    # Do Reboot here.
    sudo shutdown -r now | zenity --progress --percentage=95 --title=Reboot --auto-close --auto-kill --no-cancel --width=300


elif [ "$exit_type" = "Shutdown" ]
then
    # Do Shutdown here.
    sudo shutdown -h now | zenity --progress --percentage=95 --title=Reboot --auto-close --auto-kill --no-cancel --width=300


elif [ "$exit_type" = "Suspend" ]
then
    # Do suspend here.
    sudo pm-suspend | zenity --progress --percentage=95 --title=Reboot --auto-close --auto-kill --no-cancel --width=300


elif [ "$exit_type" = "Hibernate" ]
then
    # Do Shutdown here.
    sudo pm-hibernate | zenity --progress --percentage=95 --title=Shutdown --auto-close --auto-kill --no-cancel --width=300

else

    #if [ "$exit_type" = "Cancel" ]
    #then
    # Do Cancel here.
    zenity --progress --percentage=95 --title=Cancelling Exit --auto-close --auto-kill --no-cancel --width=300
fi
