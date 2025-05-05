#!/bin/bash

FILE="$HOME/.config/hypr/scripts/monitor_mode.txt"
if [[ -f "$FILE" ]]; then
    content=$(<"$FILE")
else
    content="unknown"
fi

case "$content" in
    "dual")
        icon=" "
        ;;
    "only1")
        icon=" 1"
        ;;
    "only2")
        icon=" 2"
        ;;
    *)
        icon=""  # unknown icon
        ;;
esac

echo "{\"text\": \"$icon\", \"tooltip\": \"$content\"}"
