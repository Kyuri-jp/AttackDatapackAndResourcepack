#> systems:operator/actions/setting/modify/settings/game_time/200
# @user

# get data -> set value -> change value
    execute store result score $settings.gameTime temporary run data get storage storage:settings Main.Custom.Times.Game.MainGame 1
    scoreboard players add $settings.gameTime temporary 200
    execute store result storage storage:settings Main.Custom.Times.Game.MainGame int 1 run scoreboard players get $settings.gameTime temporary

# reset
    scoreboard players reset $settings.gameTime temporary

# reshow
    function systems:operator/actions/setting/modify/message