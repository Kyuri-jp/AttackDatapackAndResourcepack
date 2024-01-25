scoreboard players reset @s useFungusStick
execute unless predicate libs:items/weapons/magics/books/any_books run tellraw @s {"text": "本を左手に持ってください","bold": true}
execute unless predicate libs:items/weapons/magics/books/any_books run return 0
tag @s add attack.weapons.magics.rods.user

# emelemnts
scoreboard players set $attack.weapons.magics.rods.elements datas 0
execute if predicate libs:items/weapons/magics/rods/air_rod run scoreboard players set $attack.weapons.magics.rods.elements datas 1
execute if predicate libs:items/weapons/magics/rods/dirt_rod run scoreboard players set $attack.weapons.magics.rods.elements datas 2
execute if predicate libs:items/weapons/magics/rods/fire_rod run scoreboard players set $attack.weapons.magics.rods.elements datas 3
execute if predicate libs:items/weapons/magics/rods/water_rod run scoreboard players set $attack.weapons.magics.rods.elements datas 4

# summon
summon armor_stand ~ ~ ~ {Marker:true,Invisible:true,Tags:["attack.anchor.magics.rods"]}
data modify entity @e[type=armor_stand,tag=attack.anchor.magics.rods,distance=..0.01,limit=1] Rotation set from entity @s Rotation
execute as @e[type=armor_stand,tag=attack.anchor.magics.rods,distance=..0.01,limit=1] at @s run tp @s ~ ~1 ~

# books
execute if predicate libs:items/weapons/magics/books/explosion run function systems:weapons/magics/books/detect_books