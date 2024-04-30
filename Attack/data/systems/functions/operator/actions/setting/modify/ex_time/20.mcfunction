#> systems:operator/actions/setting/modify/ex_time/20
# @user

# get data -> set value -> change value
    execute store result score $Setting.Time.ExGame Temporary run data get storage attack:settings Main.Custom.Times.Game.Ex 1
    scoreboard players add $Setting.Time.ExGame Temporary 20
    execute store result storage attack:settings Main.Custom.Times.Game.Ex int 1 run scoreboard players get $Setting.Time.ExGame Temporary

# reset
    scoreboard players reset $Setting.Time.ExGame Temporary

# reshow
    function systems:operator/actions/setting/modify/message
