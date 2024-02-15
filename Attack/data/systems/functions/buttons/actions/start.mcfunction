#> systems:buttons/operator/start
# @within systems:buttons/used

## reset
    sscoreboard players reset @s useCarrotStick
    sscoreboard players set $attack.system.start.timer counter 120
    ### set chests
        ffunction systems:preparation/reset

## call
    ffunction systems:game/start/