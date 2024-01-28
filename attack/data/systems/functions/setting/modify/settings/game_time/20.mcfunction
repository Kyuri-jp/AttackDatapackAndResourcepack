execute store result score $attack.settings.gameTime temporary run data get storage storage:settings Main.Custom.Times.Game.MainGame 1
scoreboard players add $attack.settings.gameTime temporary 20
execute store result storage storage:settings Main.Custom.Times.Game.MainGame int 1 run scoreboard players get $attack.settings.gameTime temporary
scoreboard players reset $attack.settings.gameTime temporary
function systems:setting/modify/message