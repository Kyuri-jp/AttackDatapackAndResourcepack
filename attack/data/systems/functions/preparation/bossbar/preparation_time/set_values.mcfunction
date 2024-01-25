execute store result bossbar attack.game.datas max run scoreboard players get $attack.settings.preparationTime Settings
scoreboard players operation $attack.timer.preparationTime datas = $attack.settings.preparationTime Settings
bossbar set attack.game.datas visible true
bossbar set attack.game.datas color blue
function systems:preparation/bossbar/preparation_time/start_datas