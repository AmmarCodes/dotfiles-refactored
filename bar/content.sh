#! /bin/bash

# Colors
white="FFFFFF"
black="#181818"
darkgrey="#282828"
green="#8F9D6A"
transgray="#55ffffff"

separator="%{F#22ffffff} | %{F-}"

clock() {
    DATE=$(date "+%a %d %h %{F$transgray}%{F-} %I:%M %{F$transgray}%p%{F-}")
    echo -n "$DATE"
}

battery() {
    bash ~/dotfiles/bar/panel_battery
}

memory() {
    # Show free memory
    echo -n "%{F$transgray}%{F-}"
    free -m | awk '/Mem:/ {print " " $3" MB Used "}'
}

cpu() {
    cpuusage=$(mpstat | awk '/all/ {print $4 + $6}')
    echo "$cpuusage% Used"
}

volume() {
    volup="A4:amixer set Master 5%+:"
    voldown="A5:amixer set Master 5%-:"
    volmute="A:amixer set Master toggle:"

    # Volume Indicator
    if [[ $(amixer get Master | awk '/Mono:/ {print $6}') == "[off]" ]]; then
        vol=$(echo " Mute")
    else
        mastervol=$(amixer get Master | egrep -o '[0-9]{1,3}%' | sed -e 's/%//')
        vol=$(echo " $mastervol")
    fi

    echo "%{$volup}%{$voldown}%{$volmute} $vol %{A}%{A}%{A}"
}



workspace() {
    # Workspace switcher for i3 using wmctrl ( Can easily be edited for another wm)
    # Supports icon fonts, words and numbers of any length!
    # Functions exactly like the workspace switcher in i3bar
    # Also supports as many workspaces as your wm can create, you'll need the space to avoid overlapping though.

    # Bug: Click events don't work when the workspace is named (number: word) for some reason. Not sure is it's an i3 issue as the code sent to bar looks fine.
    # Missing: Mode indicator (Resize mode, etc) and I don't think it's possible without using an ipc library.

    # Change "next_on_output" to "next" to cycle between every workspace
    workspacenext="A4:i3-msg workspace next_on_output:"
    workspaceprevious="A5:i3-msg workspace prev_on_output:"

    # This part took hours of trial and error, check the git history of this file!
    # Increase the number of variables in print to have workspaces longer than 12 words in length.
    wslist=$(\
             wmctrl -d \
             | awk '/ / {print $2 $9, $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $20}' ORS=''\
             | sed -e 's/\s*  //g' \
             -e 's/\*[ 0-9A-Za-z]*[^ -~]*/%{B#bb222222} & %{B}/g' \
             -e 's/\-[ 0-9A-Za-z]*[^ -~]*/%{B#22181818}%{A:i3-msg workspace &:} & %{A}%{B}/g' \
             -e 's/\*//g' \
             -e 's/ -/ /g' \
             )

    # Adds the scrollwheel events and displays the switcher
    # echo "%{$workspacenext}%{$workspaceprevious}$wslist%{A}%{A}"
    echo "%{A1:i3-msg workspace next_on_output:}$wslist%{A}"
}

wifi() {
    bash ~/dotfiles/bar/panel_wifi
}

while true; do
    # Every line below is a different "Block" on the bar. I've laid it out this way so that it's easier to edit and to see what's going on.
    # echo\
    # "%{l}\
    #     $(workspace)\
    # %{l}\
    # %{c}\
    #     %{B$black} $(clock) \
    # %{c}\
    # %{r}\
    #     $(memory) \
    #     %{B$green} $(cpu) \
    #     %{B$darkgrey} $(volume) \
    # %{r}"
    echo "%{l} $(workspace) %{l} %{c}$(clock)%{c} %{r}$(cpu) $separator $(memory) $separator  $(battery) $separator $(wifi)%{r}"
    # xset dpms 0 0 0
    sleep .05s
done
