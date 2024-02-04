# get data
    execute store result score @s coolDownCounter run data get storage storage:settings Main.Custom.Times.Game.CoolDown

# start timer
    function systems:game/respawn/cool_time/count_down