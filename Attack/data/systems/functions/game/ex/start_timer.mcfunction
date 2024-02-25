#> systems:game/ex/start_timer
#
# タイマーをスタートします
#
# @within
#   systems:game/ex/start_timer
#   systems:game/ex/
#   systems:game/end/

#> score holder
# @private
    #declare score_holder $Timer.Ex.Sec

# data get
    execute store result score $Const.Timer.Sec Temporary run data get storage attack:registry Main.Calculation.Seconds

# remove count
    scoreboard players remove $Timer.Ex Counter 1

# calculate
    scoreboard players operation $Timer.Ex.Sec Temporary = $Timer.Ex Counter
    scoreboard players operation $Timer.Ex.Sec Temporary /= $Const.Timer.Sec Temporary

# bossber change
    ## name
        bossbar set main.timer name [{"text":"[Exhibition Game]Time remaining:"},{"score":{"name":"$Timer.Ex.Sec","objective":"Temporary"}},{"text":" seconds"}]
    ## value
        execute store result bossbar main.timer value run scoreboard players get $Timer.Ex Counter

# reset
    scoreboard players reset $Timer.Ex.Sec Temporary
    scoreboard players reset $Const.Timer.Sec Temporary

# end count
    execute if score $Timer.Ex Counter matches ..0 run function systems:game/end/judgment/ex
    ## reset
        execute if score $Timer.Ex Counter matches ..0 run scoreboard players reset $Timer.Ex Counter

# recall
    execute if score $Timer.Ex Counter matches 1.. run schedule function systems:game/ex/start_timer 1t