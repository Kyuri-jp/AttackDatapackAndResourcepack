#> systems:operator/buttons/actions/start
# @within systems:operator/buttons/used

#> score holder
# @within
#   systems:operator/buttons/actions/start
#   systems:game/start/
    #declare score_holder $Timer.GameStart

## reset
    scoreboard players reset @s UseCarrotStick
    scoreboard players set $Timer.GameStart Counter 120
    ## set chests
        function systems:game/structure/set/blocks/chests/

## call
    function systems:game/start/