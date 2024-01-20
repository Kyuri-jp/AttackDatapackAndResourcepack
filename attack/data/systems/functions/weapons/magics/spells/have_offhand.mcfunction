summon item ~ ~ ~ {Item:{id:"minecraft:stick",Count:1b,tag:{display:{Name:'{"text": "Item Of Null"}'}}},PickupDelay:0s}
data modify entity @e[type=item,distance=..0.01,limit=1] Item set from entity @s Inventory[{Slot:-106b}]
item replace entity @s weapon.offhand with air