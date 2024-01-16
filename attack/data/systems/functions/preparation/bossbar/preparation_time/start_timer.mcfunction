scoreboard players remove $attack.timer.preparationTime timer 1
scoreboard players operation $attack.timer.preparationTime.sec timer = $attack.timer.preparationTime timer
scoreboard players operation $attack.timer.preparationTime.sec timer /= $attack.constants.timer.sec constants
bossbar set attack.game.timer name [{"text":"[Preparation]Time remaining: "},{"score":{"name":"$attack.timer.preparationTime.sec","objective":"timer"}},{"text":" seconds"}]
execute store result bossbar attack.game.timer value run scoreboard players get $attack.timer.preparationTime timer
execute unless score $attack.timer.preparationTime timer matches ..0 run schedule function systems:preparation/bossbar/preparation_time/start_timer 1t
execute if score $attack.timer.preparationTime timer matches ..0 run function systems:game/main_game/set_values

execute if score $attack.timer.preparationTime timer matches ..0 run scoreboard players reset $attack.timer.preparationTime.sec timer
execute if score $attack.timer.preparationTime timer matches ..0 run scoreboard players reset $attack.timer.preparationTime timer