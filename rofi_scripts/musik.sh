#!/bin/bash

run() {
    setsid "$@" >/dev/null 2>&1 &
}

if [ -z "$1" ]; then
    echo "Kew"
    echo "cava"
    echo "Musik beenden"
else
    case "$1" in
        "Kew")
            run kitty --class kew-player kew
            ;;
        "cava")
            run kitty --class cava cava
            ;;
        "Musik beenden")
            killall kew
            ;;
    esac
fi