scoreboard players remove $attack.timer.exGame datas 1
scoreboard players operation $attack.timer.exTime.sec datas = $attack.timer.exTime datas
scoreboard players operation $attack.timer.exTime.sec datas /= $attack.constants.datas.sec constants
bossbar set attack.game.timer name [{"text":"[Exhibition Game]Time remaining:"},{"score":{"name":"$attack.timer.exGame.sec","objective":"datas"}},{"text":" seconds"}]
execute store result bossbar attack.game.timer value run scoreboard players get $attack.timer.exGame datas
execute if score $attack.timer.exGame datas matches ..0 run function systems:game/end/judgment/detect
execute unless score $attack.timer.exGame datas matches ..0 run schedule function systems:game/ex/start_timer 1t

execute if score $attack.timer.exGame datas matches ..0 run scoreboard players reset $attack.timer.exGame.sec datas
execute if score $attack.timer.exGame datas matches ..0 run scoreboard players reset $attack.timer.exGame datas