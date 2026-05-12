#!/bin/bash

run() {
    setsid "$@" >/dev/null 2>&1 &
}

if [ -z "$1" ]; then
    echo "Arduino IDE"
    echo "VS Code"
    echo "Notiz Buch"
else
    case "$1" in
        "Arduino IDE")
            run flatpak run cc.arduino.IDE2
            ;;
        "VS Code")
            run code
            ;;
        "Notiz Buch")
            run kwrite
            ;;
    esac
fi