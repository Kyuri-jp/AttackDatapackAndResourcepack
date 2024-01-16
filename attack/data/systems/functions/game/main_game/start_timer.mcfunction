scoreboard players remove $attack.timer.gameTime timer 1
scoreboard players operation $attack.timer.gameTime.sec timer = $attack.timer.gameTime timer
scoreboard players operation $attack.timer.gameTime.sec timer /= $attack.constants.timer.sec constants
bossbar set attack.game.timer name [{"text":"[Main Game]Time remaining:"},{"score":{"name":"$attack.timer.gameTime.sec","objective":"timer"}},{"text":" seconds"}]
execute store result bossbar attack.game.timer value run scoreboard players get $attack.timer.gameTime timer
execute if score $attack.timer.gameTime timer matches ..0 run function systems:game/end/judgment/detect
execute unless score $attack.timer.gameTime timer matches ..0 run schedule function systems:game/main_game/start_timer 1t

execute if score $attack.timer.gameTime timer matches ..0 run scoreboard players reset $attack.timer.gameTime.sec timer
execute if score $attack.timer.gameTime timer matches ..0 run scoreboard players reset $attack.timer.gameTime timer