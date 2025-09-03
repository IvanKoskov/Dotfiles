sketchybar --add event input_change 'AppleSelectedInputSourcesChangedNotification' \

    --add item input \
    --set input script="$PLUGIN_DIR/input.sh" \
    --subscribe input input_change
    padding_left=0\
    padding_right=0
