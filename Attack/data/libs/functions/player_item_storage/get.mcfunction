#> libs:player_item_storage/get
# 保存したInventoryを取得します

#> tag
# @within
#   libs:player_item_storage/get
#   libs:player_item_storage/entity/same_uuid
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