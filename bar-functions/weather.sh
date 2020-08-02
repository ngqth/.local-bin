#!/bin/bash

temp () {
    temp=$(cat ~/.cache/weather)
    printf "%s" "$SEP1"

    printf "%s" "$temp"
    printf "%s" "$SEP2"
}
