scoreboard players remove $attack.timer.preparationTime datas 1
scoreboard players operation $attack.timer.preparationTime.sec datas = $attack.timer.preparationTime datas
scoreboard players operation $attack.timer.preparationTime.sec datas /= $attack.constants.datas.sec constants
bossbar set attack.game.datas name [{"text":"[Preparation]Time remaining: "},{"score":{"name":"$attack.timer.preparationTime.sec","objective":"datas"}},{"text":" seconds"}]
execute store result bossbar attack.game.datas value run scoreboard players get $attack.timer.preparationTime datas
execute unless score $attack.timer.preparationTime datas matches ..0 run schedule function systems:preparation/bossbar/preparation_time/start_datas 1t
execute if score $attack.timer.preparationTime datas matches ..0 run function systems:game/main_game/set_values

execute if score $attack.timer.preparationTime datas matches ..0 run scoreboard players reset $attack.timer.preparationTime.sec datas
execute if score $attack.timer.preparationTime datas matches ..0 run scoreboard players reset $attack.timer.preparationTime datas