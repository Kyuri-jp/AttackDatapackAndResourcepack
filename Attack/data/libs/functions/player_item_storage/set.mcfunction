#> libs:player_item_storage/set
# プレイヤーのInventoryを保存します


#> private
# @private
    #declare tag Pis.Key

#> common
# @within
#   libs:player_item_storage/**
#   systems:game/end/
    #declare tag Pis.Marker

# summon key item
    summon item ~ ~ ~ {Item: {id: "minecraft:stick", Count: 1, tag: {display: {Name: '{"text": "Data Key"}'}}}, Tags: ["Pis.Key"], Invulnerable: true, NoGravity: true, PickupDelay: 100}

# set data
    data modify entity @e[type=item,distance=..0.01,limit=1] Item.tag.PlayerUUID set from entity @s UUID
    data modify entity @e[type=item,distance=..0.01,limit=1] Item.tag.Inventory set from entity @s Inventory

# summon storage
    summon armor_stand ~ ~ ~ {Invisible: true, Marker: true, Tags: ["Pis.Marker"]}
    data modify entity @e[type=armor_stand,tag=Pis.Marker,distance=..0.01,limit=1] HandItems[0] set from entity @e[type=item,tag=Pis.Key,distance=..0.01,limit=1] Item

# kill key item
    kill @e[type=item,tag=Pis.Key,distance=..0.01,limit=1]