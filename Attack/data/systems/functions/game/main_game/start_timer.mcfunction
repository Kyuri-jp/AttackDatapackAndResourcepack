# data get
    execute store result score $constants.counter.sec temporary run data get storage storage:registry Main.Calculation.Seconds

# remove count
    scoreboard players remove $timer.gameTime counter 1

# calculate
    scoreboard players operation $timer.gameTime.sec temporary = $timer.gameTime counter
    scoreboard players operation $timer.gameTime.sec temporary /= $constants.counter.sec temporary

# bossber change
    ## name
        bossbar set attack.game.timer name [{"text":"[Main Game]Time remaining:"},{"score":{"name":"$timer.gameTime.sec","objective":"temporary"}},{"text":" seconds"}]
    ## value
    execute store result bossbar attack.game.timer value run scoreboard players get $timer.gameTime counter

# reset
    scoreboard players reset $timer.gameTime.sec temporary
    scoreboard players reset $constants.counter.sec temporary

# end count
    execute if score $timer.gameTime counter matches ..0 run function systems:game/end/judgment/
    ## reset
        execute if score $timer.gameTime counter matches ..0 run scoreboard players reset $timer.gameTime counter

# recall
    execute if score $timer.gameTime counter matches 1.. run schedule function systems:game/main_game/start_timer 1t