#> systems:operator/actions/setting/modify/preparation_time/-20
# @user

# get data -> set value -> change value
    execute store result score $Setting.Time.Preparation Temporary run data get storage attack:settings Main.Custom.Times.Game.Preparation 1
    scoreboard players remove $Setting.Time.Preparation Temporary 20
    execute store result storage attack:settings Main.Custom.Times.Game.Preparation int 1 run scoreboard players get $Setting.Time.Preparation Temporary

# reset
    scoreboard players reset $Setting.Time.Preparation Temporary

# reshow
    function systems:operator/actions/setting/modify/message