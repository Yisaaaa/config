dunstctl close-all
wpctl set-volume -l 0 @DEFAULT_AUDIO_SINK@ 5%-
vol=$(wpctl get-volume @DEFAULT_AUDIO_SINK@)
notify-send "$vol"

