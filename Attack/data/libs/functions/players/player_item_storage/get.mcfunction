# set player
    tag @s add storage.players.items.get

# search
    function libs:players/player_item_storage/entity/same_uuid

# give items
    function libs:players/player_item_storage/inventory/summon

# reset
    kill @e[type=armor_stand,tag=storage.players.items.marker.here,limit=1]
    tag @s remove storage.players.items.get