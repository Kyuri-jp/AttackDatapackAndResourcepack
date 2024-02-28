#> libs:player_item_storage/inventory/slot/main
#
# メインハンドのアイテムを召喚します
#
# @within libs:player_item_storage/inventory/summon

#> Tag
# @private
    #declare tag Pis.Generated

# get items
    ## summon
        summon item ~ ~ ~ {Invulnerable: true, Tags: ["Pis.Generated"], Item: {id: "minecraft:stick", Count: 1, tag: {display: {Name: '{"text": "Item Of Null"}'}}}, PickupDelay: 0}

    ## set data
        data modify entity @e[type=item,tag=Pis.Generated,distance=..0.01,limit=1] Item.id set from entity @e[type=armor_stand,tag=Pis.Marker.Here,limit=1] HandItems[0].tag.Inventory[0].id
        data modify entity @e[type=item,tag=Pis.Generated,distance=..0.01,limit=1] Item.tag set from entity @e[type=armor_stand,tag=Pis.Marker.Here,limit=1] HandItems[0].tag.Inventory[0].tag
        data modify entity @e[type=item,tag=Pis.Generated,distance=..0.01,limit=1] Item.Count set from entity @e[type=armor_stand,tag=Pis.Marker.Here,limit=1] HandItems[0].tag.Inventory[0].Count
        execute if data entity @e[type=armor_stand,tag=Pis.Marker.Here,limit=1] HandItems[0].tag.Inventory[0].tag.display run data modify entity @e[type=item,tag=Pis.Generated,distance=..0.01,limit=1] Item.tag.display set from entity @e[type=armor_stand,tag=Pis.Marker.Here,limit=1] HandItems[0].tag.Inventory[0].tag.display
        execute unless data entity @e[type=armor_stand,tag=Pis.Marker.Here,limit=1] HandItems[0].tag.Inventory[0].tag.display run data remove entity @e[type=item,tag=Pis.Generated,distance=..0.01,limit=1] Item.tag.display

# remove tag
    tag @e[type=item,tag=Pis.Generated,distance=..0.01,limit=1] remove Pis.Generated