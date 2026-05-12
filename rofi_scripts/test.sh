#!/bin/bash

if [ -z "$1" ]; then
    echo "Browser"
    echo "Terminal"
    echo "Shutdown"
else
    case "$1" in
        Browser) firefox ;;
        Terminal) kitty ;;
        Shutdown) poweroff ;;
    esac
fi
