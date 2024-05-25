#> systems:game/preparation/start_timer
#
# タイマーをスタートします
#
# @within
#   systems:game/preparation/start_timer
#   systems:game/preparation/
#   systems:game/end/

#> Score Holder
# @within systems:game/*/start_timer
    #declare score_holder $Const.Timer.Sec
    #declare score_holder $Const.Timer.Min
    #declare score_holder $Const.Timer.H

#> private score holder
# @private
    #declare score_holder $Timer.Preparation.Sec
    #declare score_holder $Timer.Preparation.Min
    #declare score_holder $Timer.Preparation.H
    #declare score_holder $Timer.Preparation.Remove.Temp

# data get
    execute store result score $Const.Timer.Sec Temporary run data get storage attack:registry Main.Calculation.Seconds
    execute store result score $Const.Timer.Min Temporary run data get storage attack:registry Main.Calculation.Minutes
    execute store result score $Const.Timer.H Temporary run data get storage attack:registry Main.Calculation.Hours

# remove count
    scoreboard players remove $Timer.Preparation Counter 1

# calculate
    scoreboard players operation $Timer.Preparation.Sec Temporary = $Timer.Preparation Counter
    scoreboard players operation $Timer.Preparation.Sec Temporary /= $Const.Timer.Sec Temporary
    scoreboard players operation $Timer.Preparation.Min Temporary = $Timer.Preparation.Sec Temporary
    scoreboard players operation $Timer.Preparation.Min Temporary /= $Const.Timer.Min Temporary
    scoreboard players operation $Timer.Preparation.H Temporary = $Timer.Preparation.Min Temporary
    scoreboard players operation $Timer.Preparation.H Temporary /= $Const.Timer.H Temporary
    scoreboard players operation $Timer.Preparation.Remove.Temp Temporary = $Timer.Preparation.Sec Temporary
    scoreboard players operation $Timer.Preparation.Remove.Temp Temporary /= $Const.Timer.Min Temporary
    scoreboard players operation $Timer.Preparation.Remove.Temp Temporary *= $Const.Timer.Min Temporary
    scoreboard players operation $Timer.Preparation.Sec Temporary -= $Timer.Preparation.Remove.Temp Temporary
    scoreboard players operation $Timer.Preparation.Remove.Temp Temporary = $Timer.Preparation.Min Temporary
    scoreboard players operation $Timer.Preparation.Remove.Temp Temporary /= $Const.Timer.H Temporary
    scoreboard players operation $Timer.Preparation.Remove.Temp Temporary *= $Const.Timer.H Temporary
    scoreboard players operation $Timer.Preparation.Min Temporary -= $Timer.Preparation.Remove.Temp Temporary

# bossber change
    ## name
        bossbar set main.timer name {"translate":"ui.gui.gameTimeBar.sec","with": [{"text": "Preparation Time"},{"score":{"name": "$Timer.Preparation.Sec","objective": "Temporary"}}]}
        execute if score $Timer.Preparation.Min Temporary matches 1.. run bossbar set main.timer name {"translate":"ui.gui.gameTimeBar.min","with": [{"text": "Main Game"},{"score":{"name": "$Timer.Preparation.Min","objective": "Temporary"}},{"score":{"name": "$Timer.Preparation.Sec","objective": "Temporary"}}]}
        execute if score $Timer.Preparation.H Temporary matches 1.. run bossbar set main.timer name {"translate":"ui.gui.gameTimeBar.hour","with": [{"text": "Main Game"},{"score":{"name": "$Timer.Preparation.H","objective": "Temporary"}},{"score":{"name": "$Timer.Preparation.Min","objective": "Temporary"}},{"score":{"name": "$Timer.Preparation.Sec","objective": "Temporary"}}]}

    ## value
        execute store result bossbar main.timer value run scoreboard players get $Timer.Preparation Counter

# reset
    scoreboard players reset $Timer.Preparation.Sec Temporary
    scoreboard players reset $Const.Timer.Sec Temporary
    scoreboard players reset $Timer.Preparation.Min Temporary
    scoreboard players reset $Const.Timer.Min Temporary
    scoreboard players reset $Timer.Preparation.H Temporary
    scoreboard players reset $Const.Timer.H Temporary

# end count
    execute if score $Timer.Preparation Counter matches ..0 run function systems:game/main_game/
    ## reset
        execute if score $Timer.Preparation Counter matches ..0 run scoreboard players reset $Timer.Preparation Counter

# recall
    execute if score $Timer.Preparation Counter matches 1.. run schedule function systems:game/preparation/start_timer 1t