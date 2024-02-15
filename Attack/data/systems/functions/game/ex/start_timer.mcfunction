# data get
    execute store result score $constants.counter.sec temporary run data get storage storage:registry Main.Calculation.Seconds

# remove count
    scoreboard players remove $timer.exTime counter 1

# calculate
    scoreboard players operation $timer.exTime.sec temporary = $timer.exTime counter
    scoreboard players operation $timer.exTime.sec temporary /= $constants.counter.sec temporary

# bossber change
    ## name
        bossbar set attack.game.timer name [{"text":"[Exhibition Game]Time remaining:"},{"score":{"name":"$timer.exTime.sec","objective":"temporary"}},{"text":" seconds"}]
    ## value
    execute store result bossbar attack.game.timer value run scoreboard players get $timer.exTime counter

# reset
    scoreboard players reset $timer.exTime.sec temporary
    scoreboard players reset $constants.counter.sec temporary

# end count
    execute if score $timer.exTime counter matches ..0 run function systems:game/end/judgment/ex
    ## reset
        execute if score $timer.exTime counter matches ..0 run scoreboard players reset $timer.exTime counter

# recall
    execute if score $timer.exTime counter matches 1.. run schedule function systems:game/ex/start_timer 1t