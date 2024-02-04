tellraw @a "ex"

# data get
    execute store result score $attack.constants.counter.sec temporary run data get storage storage:registry Main.Calculation.Seconds

# remove count
    scoreboard players remove $attack.timer.exTime counter 1

# calculate
    scoreboard players operation $attack.timer.exTime.sec temporary = $attack.timer.exTime counter
    scoreboard players operation $attack.timer.exTime.sec temporary /= $attack.constants.counter.sec temporary

# bossber change
    ## name
        bossbar set attack.game.timer name [{"text":"[Exhibition Game]Time remaining:"},{"score":{"name":"$attack.timer.exTime.sec","objective":"temporary"}},{"text":" seconds"}]
    ## value
    execute store result bossbar attack.game.timer value run scoreboard players get $attack.timer.exTime counter

# reset
    scoreboard players reset $attack.timer.exTime.sec temporary
    scoreboard players reset $attack.constants.counter.sec temporary

# end count
    execute if score $attack.timer.exTime counter matches ..0 run function systems:game/end/judgment/detect
    ## reset
        execute if score $attack.timer.exTime counter matches ..0 run scoreboard players reset $attack.timer.exTime counter

# recall
    execute if score $attack.timer.exTime counter matches 1.. run schedule function systems:game/ex/start_timer 1t