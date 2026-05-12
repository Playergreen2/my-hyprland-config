#!/bin/bash

run() {
    setsid "$@" >/dev/null 2>&1 &
}

if [ -z "$1" ]; then
    echo "Waybar Orginale Config"
    echo "Minibar V1"
    echo "Minibar V2"
    echo "Waybar mit Hintergrund"
    echo "Waybar ohne Hintergrund"
    echo "Taskbar Ausschalten"
else
    case "$1" in
        "Waybar mit Hintergrund")
            killall waybar
            run waybar -c ~/waybar_configs/standart_mit_hintergrund/config.jsonc -s ~/waybar_configs/standart_mit_hintergrund/style.css
            ;;
        "Waybar ohne Hintergrund")
            killall waybar
            run waybar -c ~/waybar_configs/standart_ohne_hintergrund/config.jsonc -s ~/waybar_configs/standart_ohne_hintergrund/style.css
            ;;
        "Waybar Orginale Config")
            killall waybar
            run waybar
            ;;
        "Minibar V1")
            killall waybar
            run waybar -c ~/waybar_configs/minibar_v1/config.jsonc -s ~/waybar_configs/minibar_v1/style.css
            ;;
        "Minibar V2")
            killall waybar
            run waybar -c ~/waybar_configs/minibar_v2/config.jsonc -s ~/waybar_configs/minibar_v2/style.css
            ;;
        "Taskbar Ausschalten")
            killall waybar
            ;;
    esac
fi