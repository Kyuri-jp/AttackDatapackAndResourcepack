#> systems:game/ex/start_timer
#
# タイマーをスタートします
#
# @within
#   systems:game/ex/start_timer
#   systems:game/ex/
#   systems:game/end/

#> Score Holder
# @private
    #declare score_holder $Timer.Ex.Sec
    #declare score_holder $Timer.Ex.Min
    #declare score_holder $Timer.Ex.H
    #declare score_holder $Timer.Ex.Remove.Temp

# data get
    execute store result score $Const.Timer.Sec Temporary run data get storage attack:registry Main.Calculation.Seconds
    execute store result score $Const.Timer.Min Temporary run data get storage attack:registry Main.Calculation.Minutes
    execute store result score $Const.Timer.H Temporary run data get storage attack:registry Main.Calculation.Hours

# remove count
    scoreboard players remove $Timer.Ex Counter 1

# calculate
    scoreboard players operation $Timer.Ex.Sec Temporary = $Timer.Ex Counter
    scoreboard players operation $Timer.Ex.Sec Temporary /= $Const.Timer.Sec Temporary
    scoreboard players operation $Timer.Ex.Min Temporary = $Timer.Ex.Sec Temporary
    scoreboard players operation $Timer.Ex.Min Temporary /= $Const.Timer.Min Temporary
    scoreboard players operation $Timer.Ex.H Temporary = $Timer.Ex.Min Temporary
    scoreboard players operation $Timer.Ex.H Temporary /= $Const.Timer.H Temporary
    scoreboard players operation $Timer.Ex.Remove.Temp Temporary = $Timer.Ex.Sec Temporary
    scoreboard players operation $Timer.Ex.Remove.Temp Temporary /= $Const.Timer.Min Temporary
    scoreboard players operation $Timer.Ex.Remove.Temp Temporary *= $Const.Timer.Min Temporary
    scoreboard players operation $Timer.Ex.Sec Temporary -= $Timer.Ex.Remove.Temp Temporary
    scoreboard players operation $Timer.Ex.Remove.Temp Temporary = $Timer.Ex.Min Temporary
    scoreboard players operation $Timer.Ex.Remove.Temp Temporary /= $Const.Timer.H Temporary
    scoreboard players operation $Timer.Ex.Remove.Temp Temporary *= $Const.Timer.H Temporary
    scoreboard players operation $Timer.Ex.Min Temporary -= $Timer.Ex.Remove.Temp Temporary

# bossber change
    ## name
        bossbar set main.timer name {"translate":"ui.gui.gameTimeBar.sec","with": [{"text": "Ex Time"},{"score":{"name": "$Timer.Ex.Sec","objective": "Temporary"}}]}
        execute if score $Timer.Ex.Min Temporary matches 1.. run bossbar set main.timer name {"translate":"ui.gui.gameTimeBar.min","with": [{"text": "Main Game"},{"score":{"name": "$Timer.Ex.Min","objective": "Temporary"}},{"score":{"name": "$Timer.Ex.Sec","objective": "Temporary"}}]}
        execute if score $Timer.Ex.H Temporary matches 1.. run bossbar set main.timer name {"translate":"ui.gui.gameTimeBar.hour","with": [{"text": "Main Game"},{"score":{"name": "$Timer.Ex.H","objective": "Temporary"}},{"score":{"name": "$Timer.Ex.Min","objective": "Temporary"}},{"score":{"name": "$Timer.Ex.Sec","objective": "Temporary"}}]}

    ## value
        execute store result bossbar main.timer value run scoreboard players get $Timer.Ex Counter

# reset
    scoreboard players reset $Timer.Ex.Sec Temporary
    scoreboard players reset $Const.Timer.Sec Temporary
    scoreboard players reset $Timer.Ex.Min Temporary
    scoreboard players reset $Const.Timer.Min Temporary
    scoreboard players reset $Timer.Ex.H Temporary
    scoreboard players reset $Const.Timer.H Temporary

# end count
    execute if score $Timer.Ex Counter matches ..0 run function systems:game/end/judgment/ex
    ## reset
        execute if score $Timer.Ex Counter matches ..0 run scoreboard players reset $Timer.Ex Counter

# recall
    execute if score $Timer.Ex Counter matches 1.. run schedule function systems:game/ex/start_timer 1t