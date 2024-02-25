#> core:installed/set_displays
#
# Displayを表示します
#
# @within core:installed/message

#> Gallery
# @within
#   core:installed/set_displays
#   systems:wait_room/gallery/*
    #declare tag Entity.Display.Item.Gallery

#> Text
# @within
#   core:installed/set_displays
#   systems:wait_room/team/display/set
    #declare tag Entity.Display.Text.Info.Team

# set displays
    kill @e[type=item_display,tag=Entity.Display.Item.Gallery]
    kill @e[type=text_display,tag=Entity.Display.Text.Info.Team]
    function systems:wait_room/gallery/set_item_displays
    function systems:wait_room/team/display/set