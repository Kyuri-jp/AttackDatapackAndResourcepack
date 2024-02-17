#> libs:player_item_storage/get

#> tag
# @private
    #declare tag Pis.This

# set player
    tag @s add Pis.This

# search
    function libs:player_item_storage/entity/same_uuid

# give items
    function libs:player_item_storage/inventory/summon

# reset
    kill @e[type=armor_stand,tag=Pis.Marker.Here,limit=1]
    tag @s remove Pis.This