# get data
    execute store result bossbar attack.game.timer max run data get storage storage:settings Main.Custom.Times.Game.Ex
    execute store result bossbar attack.game.timer value run data get storage storage:settings Main.Custom.Times.Game.Ex
    execute store result score $attack.timer.exTime counter run data get storage storage:settings Main.Custom.Times.Game.Ex

# color change
    bossbar set attack.game.timer color red

# vfx
    tellraw @a {"text": "Start Exhibition Game!","color": "red"}
    execute as @a at @s run playsound block.end_portal.spawn player @s ~ ~ ~

# set bool
    data modify storage storage:booleans Main.Game.Ex set value true

# start
    function systems:game/ex/start_timer