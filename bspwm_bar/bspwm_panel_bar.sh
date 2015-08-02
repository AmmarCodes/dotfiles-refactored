#! /bin/sh
#
# bar input parser for bspwm  Wednesday, 01 October 2014 14:56 IST

#screen_width=$(sres -W)

NORMIFS=$IFS
FIELDIFS=':'
monitors=$(bspc query -M | wc -l)

source $(dirname $0)/panel_config

while read -r line ; do
    case $line in
        S*)
            # conky
            sys_infos="${line#?}"
            ;;
        #A*)
            ## custom window title using xprop xwinfo
            #title="%{F$TITLE_FG B-}${PAD}$(xwinfo -c ${line#?} | sed 's@N/A@@')${PAD}%{F- B-}"
            #;;
        T*)
            # window title
            title=$(echo ${line#?} | sed 's^\(.\{40\}\).*^\1...^')
            title="%{F$TITLE_FG} ${title} ${RPAD} %{F-}"
            ;;
        W*)
            # bspwm internal state
            wm_infos=""
            IFS=$FIELDIFS
            set -- ${line#?}
            while [ $# -gt 0 ] ; do
                item=$1
                case $item in
                    [OoFfUu]*)
                        # desktops
                        name=${item#?}
                        symbol=
                        case $item in
                            O*)
                                # focused occupied desktop
                                FG=$F_O_FG
                                BG=$F_O_BG
                                ;;
                            F*)
                                # focused free desktop
                                FG=$F_F_FG
                                BG=$F_F_BG
                                symbol=
                                ;;
                            U*)
                                # focused urgent desktop
                                FG=$F_U_FG
                                BG=$F_U_BG
                                ;;
                            o*)
                                # occupied desktop
                                FG=$O_FG
                                BG=$O_BG
                                ;;
                            f*)
                                # free desktop
                                FG=$F_FG
                                BG=$F_BG
                                symbol=
                                ;;
                            u*)
                                # urgent desktop
                                FG=$U_FG
                                BG=$U_BG
                                symbol=
                                ;;
                        esac
                        wm_infos="${wm_infos}%{F$FG B$BG A:bspc desktop -f ${name}:} %{U$FG}$symbol%{A B- F-}"
                        ;;
                esac
                shift
            done
            IFS=$NORMIFS
            ;;
    esac

    printf "%s\n" "%{l}$wm_infos %{c}$title %{r}$sys_infos$PAD$PAD$PAD$PAD"
    if [ $monitors == 2 ]; then 
        printf "%{S+}%{l}$wm_infos %{r} $sys_infos"
    fi
done
