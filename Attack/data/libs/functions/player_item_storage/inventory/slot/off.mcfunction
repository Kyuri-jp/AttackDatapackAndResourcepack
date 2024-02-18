#> libs:player_item_storage/inventory/slot/off
# @within libs:player_item_storage/inventory/summon

# get data
    data modify entity @e[type=armor_stand,tag=Pis.Marker.Here,limit=1] HandItems[1] set from entity @e[type=armor_stand,tag=Pis.Marker.Here,limit=1] HandItems[0].tag.Inventory[0]

# set item
    item replace entity @s weapon.offhand from entity @e[type=armor_stand,tag=Pis.Marker.Here,limit=1] weapon.offhand