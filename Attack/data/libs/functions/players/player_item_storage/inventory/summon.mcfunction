# retrun
    execute unless entity @e[type=armor_stand,tag=storage.players.items.marker.here,limit=1] run tellraw @a ["",{"text":"[Error]","bold":true,"color":"dark_red"},{"text": "(libs:players/player_item_storage/inventory/summon)","color": "dark_red"},{"text":"エンティティが存在しません (not found storage.players.items.marker.here)"}]
    execute unless entity @e[type=armor_stand,tag=storage.players.items.marker.here,limit=1] run return 0

    execute if data entity @e[type=armor_stand,tag=storage.players.items.marker.here,limit=1] {HandItems:[{tag:{Inventory:[]}},{}]} run return 0

# get items
    ## summon
        summon item ~ ~ ~ {Invulnerable:true,Tags:["storage.players.items.generated"],Item:{id:"minecraft:stick",Count:1,tag:{display:{Name:'{"text": "Item Of Null"}'}}},PickupDelay:0}

    ## set data
        data modify entity @e[type=item,tag=storage.players.items.generated,distance=..0.01,limit=1] Item.id set from entity @e[type=armor_stand,tag=storage.players.items.marker.here,limit=1] HandItems[0].tag.Inventory[0].id
        data modify entity @e[type=item,tag=storage.players.items.generated,distance=..0.01,limit=1] Item.tag set from entity @e[type=armor_stand,tag=storage.players.items.marker.here,limit=1] HandItems[0].tag.Inventory[0].tag
        data modify entity @e[type=item,tag=storage.players.items.generated,distance=..0.01,limit=1] Item.Count set from entity @e[type=armor_stand,tag=storage.players.items.marker.here,limit=1] HandItems[0].tag.Inventory[0].Count
        execute if data entity @e[type=armor_stand,tag=storage.players.items.marker.here,limit=1] HandItems[0].tag.Inventory[0].tag.display run data modify entity @e[type=item,tag=storage.players.items.generated,distance=..0.01,limit=1] Item.tag.display set from entity @e[type=armor_stand,tag=storage.players.items.marker.here,limit=1] HandItems[0].tag.Inventory[0].tag.display
        execute unless data entity @e[type=armor_stand,tag=storage.players.items.marker.here,limit=1] HandItems[0].tag.Inventory[0].tag.display run data remove entity @e[type=item,tag=storage.players.items.generated,distance=..0.01,limit=1] Item.tag.display

    ## remove data
        data remove entity @e[type=armor_stand,tag=storage.players.items.marker.here,limit=1] HandItems[0].tag.Inventory[0]

# remove tag
    tag @e[type=item,tag=storage.players.items.generated,distance=..0.01,limit=1] remove storage.players.items.generated

# recall 
    function libs:players/player_item_storage/inventory/summon