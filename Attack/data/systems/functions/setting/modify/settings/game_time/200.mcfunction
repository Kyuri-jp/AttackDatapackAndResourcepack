#> systems:setting/modify/settings/game_time/200
# @user

# get data -> set value -> change value
    execute store result score $attack.settings.gameTime temporary run data get storage storage:settings Main.Custom.Times.Game.MainGame 1
    scoreboard players add $attack.settings.gameTime temporary 200
    execute store result storage storage:settings Main.Custom.Times.Game.MainGame int 1 run scoreboard players get $attack.settings.gameTime temporary

# reset
    scoreboard players reset $attack.settings.gameTime temporary

# reshow
    function systems:setting/modify/message