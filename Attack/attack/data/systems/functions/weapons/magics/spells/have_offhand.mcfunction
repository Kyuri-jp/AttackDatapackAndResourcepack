# summon null
    summon item ~ ~ ~ {Item:{id:"minecraft:stick",Count:1b,tag:{display:{Name:'{"text": "Item Of Null"}'}}},PickupDelay:0s}

# set data
    data modify entity @e[type=item,distance=..0.01,limit=1] Item set from entity @s Inventory[{Slot:-106b}]

# remove item
    item replace entity @s weapon.offhand with air
