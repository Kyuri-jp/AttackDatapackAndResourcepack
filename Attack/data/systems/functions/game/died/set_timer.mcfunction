# get data
    execute store result score @s CoolDownCounter run data get storage attack:settings Main.Custom.Times.Game.CoolDown

# start timer
    function systems:game/respawn/cool_time/count_down