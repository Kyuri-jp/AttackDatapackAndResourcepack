#> systems:game/preparation/
#
# 準備時間をスタートします
#
# @within systems:game/start/game/

#> score holder
# @within
#   systems:game/preparation/*
#   systems:game/end/**
    #declare score_holder $Timer.Preparation


# get data -> set values
    ## bossbar
        execute store result bossbar main.timer max run data get storage attack:settings Main.Custom.Times.Game.Preparation
        execute store result bossbar main.timer value run data get storage attack:settings Main.Custom.Times.Game.Preparation

    ## Counter
    execute store result score $Timer.Preparation Counter run data get storage attack:settings Main.Custom.Times.Game.Preparation

# change bossbar properties
    bossbar set main.timer visible true
    bossbar set main.timer color blue

# start timer
    function systems:game/preparation/start_timer