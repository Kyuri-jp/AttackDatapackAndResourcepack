# data get
    execute store result score $constants.counter.sec temporary run data get storage storage:registry Main.Calculation.Seconds

# remove count
    scoreboard players remove $timer.preparationTime counter 1

# calculate
    scoreboard players operation $timer.preparationTime.sec temporary = $timer.preparationTime counter
    scoreboard players operation $timer.preparationTime.sec temporary /= $constants.counter.sec temporary

# bossber change
    ## name
        bossbar set attack.game.timer name [{"text":"[Preparation Time]Time remaining:"},{"score":{"name":"$timer.preparationTime.sec","objective":"temporary"}},{"text":" seconds"}]
    ## value
    execute store result bossbar attack.game.timer value run scoreboard players get $timer.preparationTime counter

# reset
    scoreboard players reset $timer.preparationTime.sec temporary
    scoreboard players reset $constants.counter.sec temporary

# end count
    execute if score $timer.preparationTime counter matches ..0 run function systems:game/main_game/set_values
    ## reset
        execute if score $timer.preparationTime counter matches ..0 run scoreboard players reset $timer.preparationTime counter

# recall
    execute if score $timer.preparationTime counter matches 1.. run schedule function systems:game/prepation/start_timer 1t