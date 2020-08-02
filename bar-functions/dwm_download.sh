#!/bin/sh

download () {
    printf "%s" "$SEP1"
    down=$(ifstat | grep 'wlp0s29u1u1' | awk '{print $2}')
    printf ": %s" "$down"
    printf "%s\n" "$SEP2"
}

download
