# add tag
    tag @s add Player.CoolDownNow

# set timer
    function systems:game/died/set_timer

# set items
    execute positioned ~ ~10 ~ run function libs:player_item_storage/set

# clear
    clear @s