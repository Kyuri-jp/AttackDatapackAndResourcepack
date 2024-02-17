# get data
    execute store result bossbar main.timer max run data get storage storage:settings Main.Custom.Times.Game.Ex
    execute store result bossbar main.timer value run data get storage storage:settings Main.Custom.Times.Game.Ex
    execute store result score $Timer.Ex counter run data get storage storage:settings Main.Custom.Times.Game.Ex

# color change
    bossbar set main.timer color red

# vfx
    tellraw @a {"text": "Start Exhibition Game!","color": "red"}
    execute as @a at @s run playsound block.end_portal.spawn player @s ~ ~ ~

# set bool
    data modify storage storage:booleans Main.Game.Ex set value true

# start
    function systems:game/ex/start_timer