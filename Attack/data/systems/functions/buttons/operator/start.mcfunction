#> systems:buttons/operator/start
# @within systems:buttons/used

# reset
    scoreboard players reset @s useCarrotStick
    scoreboard players set $attack.system.start.timer counter 120
    ## set chests
        function systems:preparation/reset

# call
    function systems:game/start/