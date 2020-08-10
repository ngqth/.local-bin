#!/bin/bash
pacupdate () {
    cupd=$(cat ~/.cache/pacman_updates)
    printf "%s" "$SEP1"
    printf "%s" "UP: $cupd"
    printf "%s" "$SEP2"
}
