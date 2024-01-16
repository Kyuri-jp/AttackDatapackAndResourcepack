execute if score $attack.game.count.set.chest counter matches 720.. run return 0

#turn
execute as @e[type=minecraft:armor_stand,tag=game.anchor.set.chest.placer.base,limit=1] at @s run tp @s ~ ~ ~ ~0.5 ~
execute as @e[type=armor_stand,tag=game.anchor.set.chest.placer] run data modify entity @s Rotation set from entity @e[type=minecraft:armor_stand,tag=game.anchor.set.chest.placer.base,limit=1] Rotation

#set
execute if predicate api:random_set as @e[type=armor_stand,tag=game.anchor.set.chest.placer.1] at @s run setblock ^20 ^ ^ chest{LootTable:"loots:chests/items/tire_1"} keep
execute if predicate api:random_set as @e[type=armor_stand,tag=game.anchor.set.chest.placer.2] at @s run setblock ^29 ^ ^ chest{LootTable:"loots:chests/items/tire_2"} keep
execute if predicate api:random_set as @e[type=armor_stand,tag=game.anchor.set.chest.placer.3] at @s run setblock ^19 ^ ^ chest{LootTable:"loots:chests/items/tire_4"} keep

#setAnchor
execute as @e[type=armor_stand,tag=game.anchor.set.chest.placer.1] at @s if block ^20 ^ ^ chest{LootTable:"loots:chests/items/tire_1"} positioned ^20 ^ ^ unless entity @e[type=text_display,tag=game.anchor.break.chest,distance=0.01..1.1] run summon text_display ~ ~ ~ {Tags:["game.anchor.break.chest"]}
execute as @e[type=armor_stand,tag=game.anchor.set.chest.placer.2] at @s if block ^29 ^ ^ chest{LootTable:"loots:chests/items/tire_2"} positioned ^29 ^ ^ unless entity @e[type=text_display,tag=game.anchor.break.chest,distance=0.01..1.1] run summon text_display ~ ~ ~ {Tags:["game.anchor.break.chest"]}
execute as @e[type=armor_stand,tag=game.anchor.set.chest.placer.3] at @s if block ^19 ^ ^ chest{LootTable:"loots:chests/items/tire_4"} positioned ^19 ^ ^ unless entity @e[type=text_display,tag=game.anchor.break.chest,distance=0.01..1.1] run summon text_display ~ ~ ~ {Tags:["game.anchor.break.chest"]}

#count
scoreboard players add $attack.game.count.set.chest counter 1

#reCall
function systems:preparation/chests/set/chests/random/set