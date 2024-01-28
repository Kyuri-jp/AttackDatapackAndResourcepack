execute store result score $attack.settings.exTime temporary run data get storage storage:settings Main.Custom.Times.Game.Ex 1
scoreboard players add $attack.settings.exTime temporary 200
execute store result storage storage:settings Main.Custom.Times.Game.Ex int 1 run scoreboard players get $attack.settings.exTime temporary
scoreboard players reset $attack.settings.exTime temporary
function systems:setting/modify/message