#> core:load/
#
# load処理
#
# @within tag/function minecraft:load

#> Gallery
# @within
#   core:load/
#   systems:wait_room/gallery/*
    #declare tag Entity.Display.Item.Gallery

#> Text
# @within
#   core:load/
#   systems:wait_room/team/display/set
    #declare tag Entity.Display.Text.Info.Team

#> Install
# @within
#   core:load/
#   core:installed/message
#   assets:installed
    #declare score_holder $Core.Installed.Checked

# reset
    data modify storage attack:booleans Main.Core.Installed set value 0b
    data modify storage attack:booleans Main.Core.PlayerJoindBeforeInstalled set value 0b

# gamerule
    function core:load/set/gamerules

# time,weather
    time set day
    weather clear

# bossbar
    function core:load/add/bossbars

# teams
    function core:load/add/teams

# scores
    function core:load/add/scoreboards

# set scores,storage
    function core:storage/initialize_storage_datas
    function core:storage/set_values
    function core:load/set/bossbar/max

# set displays
    kill @e[type=item_display,tag=Entity.Display.Item.Gallery]
    kill @e[type=item_display,tag=Entity.Display.Text.Info.Team]
    function systems:wait_room/gallery/set_item_displays
    function systems:wait_room/team/display/set

# end
    execute store result score $Core.Installed.Checked Datas run data get storage attack:booleans Main.Core.PlayerJoindBeforeInstalled
    data modify storage attack:booleans Main.Core.Installed set value 1b
    advancement revoke @a only assets:installed
