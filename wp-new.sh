#!/bin/bash

## Files
CONFIG="$HOME/.config/wofi/config"
STYLE="$HOME/.config/wofi/style.css"
COLORS="$HOME/.config/wofi/colors"


DIR=$HOME/pictures/wallpapers
PICS=($(ls ${DIR}))

RANDOMPICS=${PICS[ $RANDOM % ${#PICS[@]} ]}

swww query || swww-daemon

## Wofi Command
wofi_command="wofi --show dmenu \
			--prompt 'choose..'
			--conf ${CONFIG} --style ${STYLE} --color ${COLORS} \
			--width=300 --height=400 \
			--cache-file=/dev/null \
			--hide-scroll --no-actions \
			--define=matching=fuzzy"

menu(){
printf "1. Miku's Room\n" 
printf "2. Cyber Eyes\n" 
printf "3. Lucy - Cyberpunk\n" 
printf "4. Cyber Room\n" 
printf "5. Blue World\n"
printf "6. Pixel City\n"
printf "7. Blue Cosmos\n"
printf "8. Pink City\n"
printf "9. 5cm Per Second\n"
printf "10. Rainy Village\n"
printf "11. Comets\n"
printf "12. Random Wallpaper\n"
}

main() {
choice=$(menu | ${wofi_command} | cut -d. -f1)
case $choice in
1)
    swww img ${DIR}/wallpaper.jpg --transition-fps 30 --transition-type any --transition-duration 3
    return
    ;;
2)
    swww img ${DIR}/wp2.png --transition-fps 30 --transition-type any --transition-duration 3
    return
    ;;
3)
    swww img ${DIR}/wp3.jpg --transition-fps 30 --transition-type any --transition-duration 3
    return
    ;;
4)
    swww img ${DIR}/cyberpixelroom.gif --transition-fps 30 --transition-type any --transition-duration 3
    return
    ;;
5)
    swww img ${DIR}/wp5.png --transition-fps 30 --transition-type any --transition-duration 3
    return
    ;;
6)
    swww img ${DIR}/cyberstation.gif --transition-fps 30 --transition-type any --transition-duration 3
    return
    ;;
7)
    swww img ${DIR}/wp7.jpg --transition-fps 30 --transition-type any --transition-duration 3
    return
    ;;
8)
    swww img ${DIR}/wp8.jpg --transition-fps 30 --transition-type any --transition-duration 3
    return
    ;;
9)
    swww img ${DIR}/wp9.jpg --transition-fps 30 --transition-type any --transition-duration 3
    return
    ;;
10)
    swww img ${DIR}/wp10.jpg --transition-fps 30 --transition-type any --transition-duration 3
    return
    ;;
11)
    swww img ${DIR}/wp11.jpeg --transition-fps 30 --transition-type any --transition-duration 3
    return
    ;;
12)
    swww img ${DIR}/${RANDOMPICS} --transition-fps 30 --transition-type any --transition-duration 3
    return
    ;;
esac
}

main