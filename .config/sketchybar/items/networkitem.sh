sketchybar -m --add       item               network_up left                                               \
              --set       network_up         label.font="SF Pro:Heavy:9"                                   \
                                             icon.font="SF Pro:Heavy:9"                                    \
                                             icon=                                                         \
                                             icon.highlight_color=0xff8b0a0d                               \
                                             y_offset=5                                                    \
                                             width=0                                                       \
                                             update_freq=2                                                 \
                                             script="~/.config/sketchybar/plugins/network.sh"              \
                                                                                                           \
              --add       item               network_down left                                             \
              --set       network_down       label.font="SF Pro:Heavy:9"                                   \
                                             icon.font="SF Pro:Heavy:9"                                    \
                                             icon=                                                         \
                                             icon.highlight_color=0xff10528c                               \
                                             y_offset=-5
