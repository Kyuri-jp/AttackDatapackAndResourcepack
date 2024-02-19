#> systems:game/ex/start_timer

#> score holder
# @private
    #declare score_holder $Timer.Ex.Sec



# data get
    execute store result score $Const.Timer.Sec temporary run data get storage attack:registry Main.Calculation.Seconds

# remove count
    scoreboard players remove $Timer.Ex counter 1

# calculate
    scoreboard players operation $Timer.Ex.Sec temporary = $Timer.Ex counter
    scoreboard players operation $Timer.Ex.Sec temporary /= $Const.Timer.Sec temporary

# bossber change
    ## name
        bossbar set main.timer name [{"text":"[Exhibition Game]Time remaining:"},{"score":{"name":"$Timer.Ex.Sec","objective":"temporary"}},{"text":" seconds"}]
    ## value
    execute store result bossbar main.timer value run scoreboard players get $Timer.Ex counter

# reset
    scoreboard players reset $Timer.Ex.Sec temporary
    scoreboard players reset $Const.Timer.Sec temporary

# end count
    execute if score $Timer.Ex counter matches ..0 run function systems:game/end/judgment/ex
    ## reset
        execute if score $Timer.Ex counter matches ..0 run scoreboard players reset $Timer.Ex counter

# recall
    execute if score $Timer.Ex counter matches 1.. run schedule function systems:game/ex/start_timer 1t