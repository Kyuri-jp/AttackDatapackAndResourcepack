scoreboard players remove $attack.timer.gameTime datas 1
scoreboard players operation $attack.timer.gameTime.sec datas = $attack.timer.gameTime datas
scoreboard players operation $attack.timer.gameTime.sec datas /= $attack.constants.datas.sec constants
bossbar set attack.game.datas name [{"text":"[Main Game]Time remaining:"},{"score":{"name":"$attack.timer.gameTime.sec","objective":"datas"}},{"text":" seconds"}]
execute store result bossbar attack.game.datas value run scoreboard players get $attack.timer.gameTime datas
execute if score $attack.timer.gameTime datas matches ..0 run function systems:game/end/judgment/detect
execute unless score $attack.timer.gameTime datas matches ..0 run schedule function systems:game/main_game/start_datas 1t

execute if score $attack.timer.gameTime datas matches ..0 run scoreboard players reset $attack.timer.gameTime.sec datas
execute if score $attack.timer.gameTime datas matches ..0 run scoreboard players reset $attack.timer.gameTime datas