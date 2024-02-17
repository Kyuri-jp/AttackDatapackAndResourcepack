#> systems:operator/buttons/operator/start
# @within systems:operator/buttons/used

## reset
    scoreboard players reset @s useCarrotStick
    scoreboard players set $system.start.timer counter 120
    ## set chests
        function systems:game/structure/set/blocks/chests/

## call
    function systems:game/start/