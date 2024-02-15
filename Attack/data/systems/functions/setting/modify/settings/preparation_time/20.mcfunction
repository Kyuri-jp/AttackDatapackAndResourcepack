#> systems:setting/modify/settings/preparation_time/20
# @user

# get data -> set value -> change value
    execute store result score $attack.settings.preparationTime temporary run data get storage storage:settings Main.Custom.Times.Game.Preparation 1
    scoreboard players add $attack.settings.preparationTime temporary 20
    execute store result storage storage:settings Main.Custom.Times.Game.Preparation int 1 run scoreboard players get $attack.settings.preparationTime temporary

# reset
    scoreboard players reset $attack.settings.preparationTime temporary

# reshow
    function systems:setting/modify/message