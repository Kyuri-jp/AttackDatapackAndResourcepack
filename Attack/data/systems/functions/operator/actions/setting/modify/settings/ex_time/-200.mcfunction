#> systems:operator/actions/setting/modify/settings/ex_time/-200
# @user

# get data -> set value -> change value
    execute store result score $Setting.Time.ExGame temporary run data get storage attack:settings Main.Custom.Times.Game.Ex 1
    scoreboard players remove $Setting.Time.ExGame temporary 200
    execute store result storage attack:settings Main.Custom.Times.Game.Ex int 1 run scoreboard players get $Setting.Time.ExGame temporary

# reset
    scoreboard players reset $Setting.Time.ExGame temporary

# reshow
    function systems:operator/actions/setting/modify/message
