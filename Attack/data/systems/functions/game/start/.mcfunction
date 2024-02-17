# count down
    execute if score $system.start.timer counter matches 100 run tellraw @a {"text": "5 seconds to start...","color": "gold"}
    execute if score $system.start.timer counter matches 80 run tellraw @a {"text": "4 seconds to start...","color": "gold"}
    execute if score $system.start.timer counter matches 60 run tellraw @a {"text": "3 seconds to start...","color": "green"}
    execute if score $system.start.timer counter matches 40 run tellraw @a {"text": "2 seconds to start...","color": "yellow"}
    execute if score $system.start.timer counter matches 20 run tellraw @a {"text": "1 second to start...","color": "red"}

# sound
    execute if score $system.start.timer counter matches 100 at @a run playsound ui.button.click player @a ~ ~ ~
    execute if score $system.start.timer counter matches 80 at @a run playsound ui.button.click player @a ~ ~ ~
    execute if score $system.start.timer counter matches 60 at @a run playsound ui.button.click player @a ~ ~ ~ 1 1.2
    execute if score $system.start.timer counter matches 40 at @a run playsound ui.button.click player @a ~ ~ ~ 1 1.4
    execute if score $system.start.timer counter matches 20 at @a run playsound ui.button.click player @a ~ ~ ~ 1 1.6
    execute if score $system.start.timer counter matches ..0 at @a run playsound ui.button.click player @a ~ ~ ~ 1 1.8

# remove count
    scoreboard players remove $system.start.timer counter 1

# recall
    execute unless score $system.start.timer counter matches ..0 run schedule function systems:game/start/ 1t

# start
    execute if score $system.start.timer counter matches ..0 run function systems:game/start/game/

# reset counter
    execute if score $system.start.timer counter matches ..0 run scoreboard players reset $system.start.timer counter