execute if score $attack.system.start.timer timer matches 100 run tellraw @s {"text": "5 seconds to start...","color": "gold"}
execute if score $attack.system.start.timer timer matches 80 run tellraw @s {"text": "4 seconds to start...","color": "gold"}
execute if score $attack.system.start.timer timer matches 60 run tellraw @s {"text": "3 seconds to start...","color": "green"}
execute if score $attack.system.start.timer timer matches 40 run tellraw @s {"text": "2 seconds to start...","color": "yellow"}
execute if score $attack.system.start.timer timer matches 20 run tellraw @s {"text": "1 second to start...","color": "red"}

execute if score $attack.system.start.timer timer matches 100 run playsound ui.button.click player @s ~ ~ ~
execute if score $attack.system.start.timer timer matches 80 run playsound ui.button.click player @s ~ ~ ~
execute if score $attack.system.start.timer timer matches 60 run playsound ui.button.click player @s ~ ~ ~ 1 1.2
execute if score $attack.system.start.timer timer matches 40 run playsound ui.button.click player @s ~ ~ ~ 1 1.4
execute if score $attack.system.start.timer timer matches 20 run playsound ui.button.click player @s ~ ~ ~ 1 1.6
execute if score $attack.system.start.timer timer matches ..0 run playsound ui.button.click player @s ~ ~ ~ 1 1.8

scoreboard players remove $attack.system.start.timer timer 1

execute unless score $attack.system.start.timer timer matches ..0 run schedule function systems:game/start/lets 1t
execute if score $attack.system.start.timer timer matches ..0 run function systems:game/start/game/start
execute if score $attack.system.start.timer timer matches ..0 run scoreboard players reset $attack.system.start.timer timer