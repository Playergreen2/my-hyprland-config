#!/bin/bash

run() {
    setsid "$@" >/dev/null 2>&1 &
}

if [ -z "$1" ]; then
    echo "Youtube"
    echo "Learning View"
    echo "Whatsapp"
    echo "Untis"
    echo "BFS-Cloud"
    echo "Chat-GPT"
    echo "Firefox starten"
else
    case "$1" in
        "Firefox starten")
            run firefox
            ;;
        Youtube)
            run firefox "youtube.com"
            ;;
        "Learning View")
            run firefox "https://learningview.org/app/#!/"
            ;;
        Whatsapp)
            run firefox "https://web.whatsapp.com/"
            ;;
        Untis)
            run firefox "https://webuntis.com/"
            ;;
        "BFS-Cloud")
            run firefox "bfscloud.de"
            ;;
        "Chat-GPT")
            run firefox "https://chatgpt.com"
            ;;
    esac
fi