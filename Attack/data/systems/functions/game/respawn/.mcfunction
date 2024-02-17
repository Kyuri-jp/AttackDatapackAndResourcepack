# set rotation
    data modify entity @e[type=armor_stand,tag=Anchor.DefaultSpawnPoint,limit=1] Rotation set from entity @s Rotation

# teleport
    tp @s @e[type=armor_stand,tag=Anchor.DefaultSpawnPoint,limit=1]

# reset players
    ## heal
        attribute @s generic.max_health base set 40
        effect give @s instant_health 3 10
        effect give @s saturation 3 10

    ## remove tag
        tag @s remove Player.CoolDownNow

    ## reset scores
        scoreboard players reset @s coolDownCounter

    ## give items
        execute positioned as @s run function libs:player_item_storage/get