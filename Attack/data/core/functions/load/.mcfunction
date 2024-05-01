#> core:load/
#
# load処理
#
# @within tag/function minecraft:load

#> Install
# @within
#   core:load/
#   core:installed/message
#   assets:installed
    #declare score_holder $Core.Installed.Checked

# return
    execute if data storage attack:booleans {Main:{Game:{Playing:1b}}} run data merge storage error:info {Level:info,Path:"core:load/",Message:"ゲーム中の再読み込みを検知しました。以降の処理を中断します",StackTrace:"Detected reloading in playing game."}
    execute if data storage attack:booleans {Main:{Game:{Playing:1b}}} run return run function api:system/util/error_notice/

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
    function core:storage/
    function core:load/set/bossbar/max

# end
    execute store result score $Core.Installed.Checked Datas run data get storage attack:booleans Main.Core.PlayerJoindBeforeInstalled
    data modify storage attack:booleans Main.Core.Installed set value 1b
    advancement revoke @a only assets:installed
