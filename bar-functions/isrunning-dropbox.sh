#!/bin/sh

case "$1" in
    --toggle)
        if [ "$(pgrep dropbox)" ]; then
            pkill -f dropbox
        else
            dropbox start &
        fi
        ;;
    *)
        if [ "$(pgrep dropbox)" ]; then
            icon=$(echo "Drp")
        else
            icon=$(echo "NoDrp")
        fi
        ;;
esac

dropbox () {
    printf "%s" "$SEP1"
    printf "%s" "$icon"
    printf "%s\n" "$SEP2"
}
