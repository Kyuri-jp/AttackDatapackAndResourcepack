scoreboard players remove $attack.timer.exGame timer 1
scoreboard players operation $attack.timer.exTime.sec timer = $attack.timer.exTime timer
scoreboard players operation $attack.timer.exTime.sec timer /= $attack.constants.timer.sec constants
bossbar set attack.game.timer name [{"text":"[Exhibition Game]Time remaining:"},{"score":{"name":"$attack.timer.exGame.sec","objective":"timer"}},{"text":" seconds"}]
execute store result bossbar attack.game.timer value run scoreboard players get $attack.timer.exGame timer
execute if score $attack.timer.exGame timer matches ..0 run function systems:game/end/judgment/detect
execute unless score $attack.timer.exGame timer matches ..0 run schedule function systems:game/ex/start_timer 1t

execute if score $attack.timer.exGame timer matches ..0 run scoreboard players reset $attack.timer.exGame.sec timer
execute if score $attack.timer.exGame timer matches ..0 run scoreboard players reset $attack.timer.exGame timer