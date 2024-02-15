#> systems:setting/modify/settings/preparation_time/-200
# @user

# get data -> set value -> change value
    execute store result score $settings.preparationTime temporary run data get storage storage:settings Main.Custom.Times.Game.Preparation 1
    scoreboard players remove $settings.preparationTime temporary 200
    execute store result storage storage:settings Main.Custom.Times.Game.Preparation int 1 run scoreboard players get $settings.preparationTime temporary

# reset
    scoreboard players reset $settings.preparationTime temporary

# reshow
    function systems:setting/modify/message