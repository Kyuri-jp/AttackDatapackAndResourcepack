#> systems:operator/actions/setting/modify/settings/game_time/20
# @user

# get data -> set value -> change value
    execute store result score $Setting.Time.MainGame Temporary run data get storage attack:settings Main.Custom.Times.Game.MainGame 1
    scoreboard players add $Setting.Time.MainGame Temporary 20
    execute store result storage attack:settings Main.Custom.Times.Game.MainGame int 1 run scoreboard players get $Setting.Time.MainGame Temporary

# reset
    scoreboard players reset $Setting.Time.MainGame Temporary

# reshow
    function systems:operator/actions/setting/modify/message