execute store result bossbar attack.game.timer max run scoreboard players get $attack.settings.exTime Settings
scoreboard players operation $attack.timer.exTime datas = $attack.settings.exTime Settings
bossbar set attack.game.timer color red
function systems:game/ex/start_timer