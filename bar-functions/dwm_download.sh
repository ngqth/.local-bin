#!/bin/sh

download () {
    down=$(cat ~/.cache/down)
    printf "%s" "$SEP1"
    printf "%s" "$down"
    printf "%s" "$SEP2"
}
