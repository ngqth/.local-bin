#!/bin/sh
cpu () {
    temp=$(sensors | grep -m 1 Core | awk '{print "CPU: " substr($3, 2, length($3)-5) "°C"}')
    printf "%s" "$SEP1"
    printf "%s" "$temp"
    printf "%s" "$SEP2"
}
