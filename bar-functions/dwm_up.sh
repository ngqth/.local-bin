#!/bin/sh

up () {
    printf "%s" "$SEP1"
    up=$(ifstat | grep 'wlp0s29u1u1' | awk '{print $4}')
    printf ": %s" "$up"
    printf "%s\n" "$SEP2"
}
up
