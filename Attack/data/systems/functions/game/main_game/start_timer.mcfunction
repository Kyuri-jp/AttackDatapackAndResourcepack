# data get
    execute store result score $Const.Timer.Sec temporary run data get storage storage:registry Main.Calculation.Seconds

# remove count
    scoreboard players remove $Timer.MainGame counter 1

# calculate
    scoreboard players operation $Timer.MainGame.Sec temporary = $Timer.MainGame counter
    scoreboard players operation $Timer.MainGame.Sec temporary /= $Const.Timer.Sec temporary

# bossber change
    ## name
        bossbar set main.timer name [{"text":"[Main Game]Time remaining:"},{"score":{"name":"$Timer.MainGame.Sec","objective":"temporary"}},{"text":" seconds"}]
    ## value
    execute store result bossbar main.timer value run scoreboard players get $Timer.MainGame counter

# reset
    scoreboard players reset $Timer.MainGame.Sec temporary
    scoreboard players reset $Const.Timer.Sec temporary

# end count
    execute if score $Timer.MainGame counter matches ..0 run function systems:game/end/judgment/
    ## reset
        execute if score $Timer.MainGame counter matches ..0 run scoreboard players reset $Timer.MainGame counter

# recall
    execute if score $Timer.MainGame counter matches 1.. run schedule function systems:game/main_game/start_timer 1t