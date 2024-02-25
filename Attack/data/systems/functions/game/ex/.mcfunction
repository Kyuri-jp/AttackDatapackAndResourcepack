#> systems:game/ex/
#
# Exゲームを開始します
#
# @within systems:game/end/judgment/

#> score holder
# @within
#   systems:game/ex/*
#   systems:game/end/**
    #declare score_holder $Timer.Ex

# get data
    execute store result bossbar main.timer max run data get storage attack:settings Main.Custom.Times.Game.Ex
    execute store result bossbar main.timer value run data get storage attack:settings Main.Custom.Times.Game.Ex
    execute store result score $Timer.Ex Counter run data get storage attack:settings Main.Custom.Times.Game.Ex

# color change
    bossbar set main.timer color red

# vfx
    tellraw @a {"text": "Start Exhibition Game!","color": "red"}
    execute as @a at @s run playsound block.end_portal.spawn player @s ~ ~ ~

# set bool
    data modify storage attack:booleans Main.Game.Ex set value true

# start
    function systems:game/ex/start_timer