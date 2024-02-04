# data get
    execute store result score $attack.constants.counter.sec temporary run data get storage storage:registry Main.Calculation.Seconds

# remove count
    scoreboard players remove $attack.timer.gameTime counter 1

# calculate
    scoreboard players operation $attack.timer.gameTime.sec temporary = $attack.timer.gameTime counter
    scoreboard players operation $attack.timer.gameTime.sec temporary /= $attack.constants.counter.sec temporary

# bossber change
    ## name
        bossbar set attack.game.timer name [{"text":"[Main Game]Time remaining:"},{"score":{"name":"$attack.timer.gameTime.sec","objective":"temporary"}},{"text":" seconds"}]
    ## value
    execute store result bossbar attack.game.timer value run scoreboard players get $attack.timer.gameTime counter

# reset
    scoreboard players reset $attack.timer.gameTime.sec temporary
    scoreboard players reset $attack.constants.counter.sec temporary

# end count
    execute if score $attack.timer.gameTime counter matches ..0 run function systems:game/end/judgment/detect
    ## reset
        execute if score $attack.timer.gameTime counter matches ..0 run scoreboard players reset $attack.timer.gameTime counter

# recall
    execute if score $attack.timer.gameTime counter matches 1.. run schedule function systems:game/main_game/start_timer 1t