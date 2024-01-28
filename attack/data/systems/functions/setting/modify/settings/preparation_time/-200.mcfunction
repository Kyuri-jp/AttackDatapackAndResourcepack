execute store result score $attack.settings.preparationTime temporary run data get storage storage:settings Main.Custom.Times.Game.Preparation 1
scoreboard players remove $attack.settings.preparationTime temporary 200
execute store result storage storage:settings Main.Custom.Times.Game.Preparation int 1 run scoreboard players get $attack.settings.preparationTime temporary
scoreboard players reset $attack.settings.preparationTime temporary
function systems:setting/modify/message