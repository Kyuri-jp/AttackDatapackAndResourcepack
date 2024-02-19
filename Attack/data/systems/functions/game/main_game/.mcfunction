#> systems:game/main_game/

#> score holder
# @within
#   systems:game/main_game/*
#   systems:game/end/**
    #declare score_holder $Timer.MainGame


# sounds
    execute as @a at @s run playsound block.end_portal.spawn player @s ~ ~ ~

# gamerule and diff
    gamerule fallDamage true
    difficulty normal

# team join
    team join redTeam @a[tag=Player.Team.Red]
    team join blueTeam @a[tag=Player.Team.Blue]
    ## tag remove
        tag @a remove Player.Team.Red
        tag @a remove Player.Team.Blue

# data get
    execute store result bossbar main.timer max run data get storage attack:settings Main.Custom.Times.Game.MainGame
    execute store result bossbar main.timer value run data get storage attack:settings Main.Custom.Times.Game.MainGame
    execute store result score $Timer.MainGame counter run data get storage attack:settings Main.Custom.Times.Game.MainGame

#color change
    bossbar set main.timer color green

# call
function systems:game/main_game/start_timer