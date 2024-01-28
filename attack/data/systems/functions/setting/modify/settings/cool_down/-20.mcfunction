execute store result score $attack.settings.coolTime temporary run data get storage storage:settings Main.Custom.Times.Game.CoolDown 1
scoreboard players remove $attack.settings.coolTime temporary 20
execute store result storage storage:settings Main.Custom.Times.Game.CoolDown int 1 run scoreboard players get $attack.settings.coolTime temporary
scoreboard players reset $attack.settings.coolTime temporary
function systems:setting/modify/message