#> systems:operator/buttons/actions/start/
#
# Startボタンを使用した際の処理
#
# @within systems:operator/buttons/used

#> Score Holder
# @within
#   systems:game/start/
#   systems:operator/buttons/actions/start/
    #declare score_holder $Timer.GameStart

# reset
    scoreboard players reset @s UseCarrotStick

# reject
    execute unless function systems:operator/buttons/actions/start/rejecter run return fail

# reset
    scoreboard players set $Timer.GameStart Counter 120
    ## set chests
        function systems:game/structure/set/blocks/chests/

# call
    function systems:game/start/