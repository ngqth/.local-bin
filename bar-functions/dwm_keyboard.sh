#!/bin/sh

# A dwm_bar function that displays the current keyboard layout
# Joe Standring <git@joestandring.com>
# GNU GPLv3

# Dependencies: xorg-setxkbmap

# dwm_keyboard () {
#     printf "%s" "$SEP1"
#     if [ "$IDENTIFIER" = "unicode" ]; then
#         # printf "⌨ %s" "$(setxkbmap -query | awk '/layout/{print $2}')"
#         printf "%s" "$(setxkbmap -query | awk '/layout/{print $2}')"
#     else
#         printf "KEY %s" "$(setxkbmap -query | awk '/layout/{print $2}')"
#     fi
#     printf "%s\n" "$SEP2"
# }

dwm_keyboard () {
    caps=$(dwm_caps)
    key=$(ibus engine)
    printf "%s" "$SEP1"
    if [ "$key" = "xkb:us::eng" ]; then
        printf "%s%s" "EN" "$caps"
    fi
    if [ "$key" = "Unikey" ]; then
        printf "%s%s" "VN" "$caps"
    fi
    if [ "$key" = "libpinyin" ]; then
        printf "%s%s" "CN" "$caps"
    fi
    printf "%s\n" "$SEP2"
}
dwm_caps () {
    num=$(dwm_num)
    caps=$(xset -q | grep Caps\ Lock | awk '{print $4}')
    if [ "$caps" = "off" ]; then
        printf "%s%s" "" "$num"
    fi
    if [ "$caps" = "on" ]; then
        printf "%s%s" " בּ" "$num"
    fi
}

dwm_num () {
    num=$(xset -q | grep Caps\ Lock | awk '{print $8}')
    if [ "$num" = "on" ]; then
        printf "%s" " "
    fi
    if [ "$num" = "off" ]; then
        printf "%s" ""
    fi
}
dwm_keyboard
