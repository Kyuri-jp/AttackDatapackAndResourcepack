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

# data get
    execute store result score $Const.Timer.Sec Temporary run data get storage attack:registry Main.Calculation.Seconds

# remove count
    scoreboard players remove $Timer.MainGame Counter 1

# calculate
    scoreboard players operation $Timer.MainGame.Sec Temporary = $Timer.MainGame Counter
    scoreboard players operation $Timer.MainGame.Sec Temporary /= $Const.Timer.Sec Temporary

# bossber change
    ## name
        bossbar set main.timer name [{"text":"[Main Game]Time remaining:"},{"score":{"name":"$Timer.MainGame.Sec","objective":"Temporary"}},{"text":" seconds"}]
    ## value
        execute store result bossbar main.timer value run scoreboard players get $Timer.MainGame Counter

# reset
    scoreboard players reset $Timer.MainGame.Sec Temporary
    scoreboard players reset $Const.Timer.Sec Temporary

# end count
    execute if score $Timer.MainGame Counter matches ..0 run function systems:game/end/judgment/
    ## reset
        execute if score $Timer.MainGame Counter matches ..0 run scoreboard players reset $Timer.MainGame Counter

# recall
    execute if score $Timer.MainGame Counter matches 1.. run schedule function systems:game/main_game/start_timer 1t