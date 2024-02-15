#> core:load/
#
# load処理
#
# @within tag/function minecraft:load

# reset
    data modify storage storage:booleans Main.Core.Installed set value 0b
    data modify storage storage:booleans Main.Core.PlayerJoindBeforeInstalled set value 0b

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
    function core:storage/create_storages
    function core:storage/set_values
    function core:load/set/bossbar/max

# set displays
    kill @e[type=item_display,tag=display.item.gallery]
    kill @e[type=item_display,tag=display.text.team]
    function systems:wait_room/gallery/set_item_displays
    function systems:wait_room/team/display/set

# end
    execute store result score $core.installed.checked datas run data get storage storage:booleans Main.Core.PlayerJoindBeforeInstalled
    data modify storage storage:booleans Main.Core.Installed set value 1b
    advancement revoke @a only libs:installed
