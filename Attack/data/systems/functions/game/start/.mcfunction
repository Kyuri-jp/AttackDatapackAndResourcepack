#> systems:game/start/
#
# ゲームの開始をカウントします
#
# @within
#   systems:game/start/
#   systems:operator/buttons/actions/start


# count down
    execute if score $Timer.GameStart Counter matches 100 run tellraw @a {"text": "5 seconds to start...","color": "gold"}
    execute if score $Timer.GameStart Counter matches 80 run tellraw @a {"text": "4 seconds to start...","color": "gold"}
    execute if score $Timer.GameStart Counter matches 60 run tellraw @a {"text": "3 seconds to start...","color": "green"}
    execute if score $Timer.GameStart Counter matches 40 run tellraw @a {"text": "2 seconds to start...","color": "yellow"}
    execute if score $Timer.GameStart Counter matches 20 run tellraw @a {"text": "1 second to start...","color": "red"}

# sound
    execute if score $Timer.GameStart Counter matches 100 at @a run playsound ui.button.click player @a ~ ~ ~
    execute if score $Timer.GameStart Counter matches 80 at @a run playsound ui.button.click player @a ~ ~ ~
    execute if score $Timer.GameStart Counter matches 60 at @a run playsound ui.button.click player @a ~ ~ ~ 1 1.2
    execute if score $Timer.GameStart Counter matches 40 at @a run playsound ui.button.click player @a ~ ~ ~ 1 1.4
    execute if score $Timer.GameStart Counter matches 20 at @a run playsound ui.button.click player @a ~ ~ ~ 1 1.6
    execute if score $Timer.GameStart Counter matches ..0 at @a run playsound ui.button.click player @a ~ ~ ~ 1 1.8

# remove count
    scoreboard players remove $Timer.GameStart Counter 1

# recall
    execute unless score $Timer.GameStart Counter matches ..0 run schedule function systems:game/start/ 1t

# start
    execute if score $Timer.GameStart Counter matches ..0 run function systems:game/start/game/

# reset Counter
    execute if score $Timer.GameStart Counter matches ..0 run scoreboard players reset $Timer.GameStart Counter