#!/bin/awk
awk '{if(l1){print ($2-l1)/1024"kB/s",($10-l2)/1024"kB/s"} else{l1=$2; l2=$10;}}' \
    <(grep wlan0 /proc/net/dev) <(sleep 1; grep wlan0 /proc/net/dev)
