#!/bin/bash

run() {
    setsid "$@" >/dev/null 2>&1 &
}

if [ -z "$1" ]; then
    echo "Sperren"
    echo "Standby"
    echo "Abmelden"
    echo "Neustarten"
    echo "Herunterfahren"
else
    case "$1" in
        Sperren)
            run hyprlock
            ;;
        Standby)
            systemctl suspend
            run hyprlock
            ;;
        Abmelden)
            hyprctl dispatch exit
            ;;
        Neustarten)
            systemctl reboot
            ;;
        Herunterfahren)
            systemctl poweroff
            ;;
    esac
fi