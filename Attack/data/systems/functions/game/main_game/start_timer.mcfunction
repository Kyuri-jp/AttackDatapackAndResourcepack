#> systems:game/main_game/start_timer
#
# タイマーをスタートします
#
# @within
#   systems:game/main_game/start_timer
#   systems:game/main_game/
#   systems:game/end/

#> Score Holder
# @private
    #declare score_holder $Timer.MainGame.Sec
    #declare score_holder $Timer.MainGame.Min
    #declare score_holder $Timer.MainGame.H
    #declare score_holder $Timer.MainGame.Remove.Temp

# data get
    execute store result score $Const.Timer.Sec Temporary run data get storage attack:registry Main.Calculation.Seconds
    execute store result score $Const.Timer.Min Temporary run data get storage attack:registry Main.Calculation.Minutes
    execute store result score $Const.Timer.H Temporary run data get storage attack:registry Main.Calculation.Hours

# remove count
    scoreboard players remove $Timer.MainGame Counter 1

# calculate
    scoreboard players operation $Timer.MainGame.Sec Temporary = $Timer.MainGame Counter
    scoreboard players operation $Timer.MainGame.Sec Temporary /= $Const.Timer.Sec Temporary
    scoreboard players operation $Timer.MainGame.Min Temporary = $Timer.MainGame.Sec Temporary
    scoreboard players operation $Timer.MainGame.Min Temporary /= $Const.Timer.Min Temporary
    scoreboard players operation $Timer.MainGame.H Temporary = $Timer.MainGame.Min Temporary
    scoreboard players operation $Timer.MainGame.H Temporary /= $Const.Timer.H Temporary
    scoreboard players operation $Timer.MainGame.Remove.Temp Temporary = $Timer.MainGame.Sec Temporary
    scoreboard players operation $Timer.MainGame.Remove.Temp Temporary /= $Const.Timer.Min Temporary
    scoreboard players operation $Timer.MainGame.Remove.Temp Temporary *= $Const.Timer.Min Temporary
    scoreboard players operation $Timer.MainGame.Sec Temporary -= $Timer.MainGame.Remove.Temp Temporary
    scoreboard players operation $Timer.MainGame.Remove.Temp Temporary = $Timer.MainGame.Min Temporary
    scoreboard players operation $Timer.MainGame.Remove.Temp Temporary /= $Const.Timer.H Temporary
    scoreboard players operation $Timer.MainGame.Remove.Temp Temporary *= $Const.Timer.H Temporary
    scoreboard players operation $Timer.MainGame.Min Temporary -= $Timer.MainGame.Remove.Temp Temporary

# bossber change
    ## name
        bossbar set main.timer name {"translate":"ui.gui.gameTimeBar.sec","with": [{"text": "Main Game"},{"score":{"name": "$Timer.MainGame.Sec","objective": "Temporary"}}]}
        execute if score $Timer.MainGame.Min Temporary matches 1.. run bossbar set main.timer name {"translate":"ui.gui.gameTimeBar.min","with": [{"text": "Main Game"},{"score":{"name": "$Timer.MainGame.Min","objective": "Temporary"}},{"score":{"name": "$Timer.MainGame.Sec","objective": "Temporary"}}]}
        execute if score $Timer.MainGame.H Temporary matches 1.. run bossbar set main.timer name {"translate":"ui.gui.gameTimeBar.hour","with": [{"text": "Main Game"},{"score":{"name": "$Timer.MainGame.H","objective": "Temporary"}},{"score":{"name": "$Timer.MainGame.Min","objective": "Temporary"}},{"score":{"name": "$Timer.MainGame.Sec","objective": "Temporary"}}]}
    ## value
        execute store result bossbar main.timer value run scoreboard players get $Timer.MainGame Counter

# reset
    scoreboard players reset $Timer.MainGame.Sec Temporary
    scoreboard players reset $Const.Timer.Sec Temporary
    scoreboard players reset $Timer.MainGame.Min Temporary
    scoreboard players reset $Const.Timer.Min Temporary
    scoreboard players reset $Timer.MainGame.H Temporary
    scoreboard players reset $Const.Timer.H Temporary

# end count
    execute if score $Timer.MainGame Counter matches ..0 run function systems:game/end/judgment/
    ## reset
        execute if score $Timer.MainGame Counter matches ..0 run scoreboard players reset $Timer.MainGame Counter

# recall
    execute if score $Timer.MainGame Counter matches 1.. run schedule function systems:game/main_game/start_timer 1t