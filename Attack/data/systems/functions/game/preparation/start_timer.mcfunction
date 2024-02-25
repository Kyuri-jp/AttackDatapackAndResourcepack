#> systems:game/preparation/start_timer
#
# タイマーをスタートします
#
# @within
#   systems:game/preparation/start_timer
#   systems:game/preparation/
#   systems:game/end/

#> score holder
# @within systems:game/*/start_timer
    #declare score_holder $Const.Timer.Sec

#> private score holder
# @private
    #declare score_holder $Timer.Preparation.Sec

# data get
    execute store result score $Const.Timer.Sec Temporary run data get storage attack:registry Main.Calculation.Seconds

# remove count
    scoreboard players remove $Timer.Preparation Counter 1

# calculate
    scoreboard players operation $Timer.Preparation.Sec Temporary = $Timer.Preparation Counter
    scoreboard players operation $Timer.Preparation.Sec Temporary /= $Const.Timer.Sec Temporary

# bossber change
    ## name
        bossbar set main.timer name [{"text":"[Preparation Time]Time remaining:"},{"score":{"name":"$Timer.Preparation.Sec","objective":"Temporary"}},{"text":" seconds"}]
    ## value
        execute store result bossbar main.timer value run scoreboard players get $Timer.Preparation Counter

# reset
    scoreboard players reset $Timer.Preparation.Sec Temporary
    scoreboard players reset $Const.Timer.Sec Temporary

# end count
    execute if score $Timer.Preparation Counter matches ..0 run function systems:game/main_game/
    ## reset
        execute if score $Timer.Preparation Counter matches ..0 run scoreboard players reset $Timer.Preparation Counter

# recall
    execute if score $Timer.Preparation Counter matches 1.. run schedule function systems:game/preparation/start_timer 1t