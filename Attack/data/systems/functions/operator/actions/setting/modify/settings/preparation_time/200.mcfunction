#> systems:operator/actions/setting/modify/settings/preparation_time/200
# @user

# get data -> set value -> change value
    execute store result score $Setting.Time.Preparation Temporary run data get storage attack:settings Main.Custom.Times.Game.Preparation 1
    scoreboard players add $Setting.Time.Preparation Temporary 200
    execute store result storage attack:settings Main.Custom.Times.Game.Preparation int 1 run scoreboard players get $Setting.Time.Preparation Temporary

# reset
    scoreboard players reset $Setting.Time.Preparation Temporary

# reshow
    function systems:operator/actions/setting/modify/message