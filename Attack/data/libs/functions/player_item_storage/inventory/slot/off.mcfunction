#> libs:player_item_storage/inventory/slot/off
#
# オフハンドのアイテムをセットします
#
# @within libs:player_item_storage/inventory/summon

#> Offhand Data Anchor
# @private
    #declare tag Pis.Marker.Off

# summon 
    summon armor_stand ~ ~ ~ {Marker:true,Invisible:true,Tags:["Pis.Marker.Off"]}

# set item data
    data modify storage psi:storage Off.Item.id set from entity @e[type=marker,tag=Pis.Marker.Here,limit=1] data.Inventory[0].id
    data modify storage psi:storage Off.Item.tag set from entity @e[type=marker,tag=Pis.Marker.Here,limit=1] data.Inventory[0].tag
    data modify storage psi:storage Off.Item.Count set from entity @e[type=marker,tag=Pis.Marker.Here,limit=1] data.Inventory[0].Count

# get data
    data modify entity @e[type=armor_stand,tag=Pis.Marker.Off,limit=1] HandItems[1] set from storage psi:storage Off.Item

# set item
    item replace entity @s weapon.offhand from entity @e[type=armor_stand,tag=Pis.Marker.Off,limit=1] weapon.offhand

# reset
    data remove storage psi:storage Off

# kill
    kill @e[type=armor_stand,tag=Pis.Marker.Off,limit=1]