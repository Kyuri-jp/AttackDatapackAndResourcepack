# data get
    execute store result score $attack.constants.counter.sec temporary run data get storage storage:registry Main.Calculation.Seconds

# remove count
    scoreboard players remove $attack.timer.preparationTime counter 1

# calculate
    scoreboard players operation $attack.timer.preparationTime.sec temporary = $attack.timer.preparationTime counter
    scoreboard players operation $attack.timer.preparationTime.sec temporary /= $attack.constants.counter.sec temporary

# bossber change
    ## name
        bossbar set attack.game.timer name [{"text":"[Preparation Time]Time remaining:"},{"score":{"name":"$attack.timer.preparationTime.sec","objective":"temporary"}},{"text":" seconds"}]
    ## value
    execute store result bossbar attack.game.timer value run scoreboard players get $attack.timer.preparationTime counter

# reset
    scoreboard players reset $attack.timer.preparationTime.sec temporary
    scoreboard players reset $attack.constants.counter.sec temporary

# end count
    execute if score $attack.timer.preparationTime counter matches ..0 run function systems:game/main_game/set_values
    ## reset
        execute if score $attack.timer.preparationTime counter matches ..0 run scoreboard players reset $attack.timer.preparationTime counter

# recall
    execute if score $attack.timer.preparationTime counter matches 1.. run schedule function systems:game/prepation/start_timer 1t