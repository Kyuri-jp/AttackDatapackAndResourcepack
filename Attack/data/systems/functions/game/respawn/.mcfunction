# set rotation
    data modify entity @e[type=armor_stand,tag=game.anchor.set.spawn,limit=1] Rotation set from entity @s Rotation

# teleport
    tp @s @e[type=armor_stand,tag=game.anchor.set.spawn,limit=1]

# reset players
    ## heal
        attribute @s generic.max_health base set 40
        effect give @s instant_health 3 10
        effect give @s saturation 3 10

    ## remove tag
        tag @s remove game.coolDownNow

    ## reset scores
        scoreboard players reset @s coolDownCounter

    ## give items
        function libs:players/player_item_storage/get