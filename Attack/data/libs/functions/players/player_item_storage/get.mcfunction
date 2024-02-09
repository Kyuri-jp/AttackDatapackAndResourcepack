# set player
    tag @s add storage.players.items.get

# search
    function libs:players/player_item_storage/entity/same_uuid

# give items
    execute positioned as @e[type=armor_stand,tag=game.anchor.set.spawn,limit=1] run function libs:players/player_item_storage/inventory/summon

# reset
    kill @e[type=armor_stand,tag=storage.players.items.marker.here,limit=1]
    tag @s remove storage.players.items.get