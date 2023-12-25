dunstctl close-all
wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+
vol=$(wpctl get-volume @DEFAULT_AUDIO_SINK@)
notify-send "$vol"
