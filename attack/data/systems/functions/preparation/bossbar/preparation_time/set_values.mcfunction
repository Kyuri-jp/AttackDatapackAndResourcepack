execute store result bossbar attack.game.timer max run scoreboard players get $attack.settings.preparationTime Settings
scoreboard players operation $attack.timer.preparationTime timer = $attack.settings.preparationTime Settings
bossbar set attack.game.timer visible true
bossbar set attack.game.timer color blue
function systems:preparation/bossbar/preparation_time/start_timer