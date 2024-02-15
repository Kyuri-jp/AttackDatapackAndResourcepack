#> systems:setting/modify/settings/game_time/-20
# @user

# get data -> set value -> change value
    execute store result score $settings.gameTime temporary run data get storage storage:settings Main.Custom.Times.Game.MainGame 1
    scoreboard players remove $settings.gameTime temporary 20
    execute store result storage storage:settings Main.Custom.Times.Game.MainGame int 1 run scoreboard players get $settings.gameTime temporary

# reset
    scoreboard players reset $settings.gameTime temporary

# reshow
    function systems:setting/modify/message