#> systems:game/died/playing
#
# Player.CoolDownNowタグが付いているプレイヤーに対して実行されます
#
# @within systems:game/died/

# add tag
    tag @s add Player.CoolDownNow

# set timer
    function systems:game/died/set_timer

# set items
    execute positioned ~ ~10 ~ run function libs:player_item_storage/set

# clear
    clear @s