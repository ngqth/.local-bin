#!/bin/sh
arch () {
    if ! updates=$(checkupdates 2> /dev/null | wc -l ); then
        updates=0
    fi

    echo $updates > ~/.cache/pacman_updates

    echo "[UP: $(cat ~/.cache/pacman_updates)]"
}
arch
