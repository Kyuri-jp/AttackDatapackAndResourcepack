#> systems:setting/modify/settings/ex_time/200
# @user

# get data -> set value -> change value
    execute store result score $settings.exTime temporary run data get storage storage:settings Main.Custom.Times.Game.Ex 1
    scoreboard players add $settings.exTime temporary 200
    execute store result storage storage:settings Main.Custom.Times.Game.Ex int 1 run scoreboard players get $settings.exTime temporary

# reset
    scoreboard players reset $settings.exTime temporary

# reshow
    function systems:setting/modify/message
