execute store result bossbar attack.game.timer max run data get storage storage:settings Main.Custom.Times.Game.Preparation
execute store result bossbar attack.game.timer value run data get storage storage:settings Main.Custom.Times.Game.Preparation
execute store result score $attack.timer.preparationTime counter run data get storage storage:settings Main.Custom.Times.Game.Preparation
bossbar set attack.game.timer visible true
bossbar set attack.game.timer color blue
function systems:preparation/bossbar/preparation_time/start_timer