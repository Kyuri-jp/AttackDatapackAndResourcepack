#> systems:game/preparation/start_timer

#> score holder
# @within systems:game/*/start_timer
    #declare score_holder $Const.Timer.Sec

# data get
    execute store result score $Const.Timer.Sec temporary run data get storage storage:registry Main.Calculation.Seconds

# remove count
    scoreboard players remove $Timer.Preparation counter 1

# calculate
    scoreboard players operation $Timer.Preparation.Sec temporary = $Timer.Preparation counter
    scoreboard players operation $Timer.Preparation.Sec temporary /= $Const.Timer.Sec temporary

# bossber change
    ## name
        bossbar set main.timer name [{"text":"[Preparation Time]Time remaining:"},{"score":{"name":"$Timer.Preparation.Sec","objective":"temporary"}},{"text":" seconds"}]
    ## value
    execute store result bossbar main.timer value run scoreboard players get $Timer.Preparation counter

# reset
    scoreboard players reset $Timer.Preparation.Sec temporary
    scoreboard players reset $Const.Timer.Sec temporary

# end count
    execute if score $Timer.Preparation counter matches ..0 run function systems:game/main_game/
    ## reset
        execute if score $Timer.Preparation counter matches ..0 run scoreboard players reset $Timer.Preparation counter

# recall
    execute if score $Timer.Preparation counter matches 1.. run schedule function systems:game/preparation/start_timer 1t