# add tag
    tag @s add game.coolDownNow

# set timer
    function systems:game/died/set_timer

# set items
    execute positioned ~ ~10 ~ run function libs:players/player_item_storage/set

# clear
    clear @s