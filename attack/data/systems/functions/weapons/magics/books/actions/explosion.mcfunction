#mp
execute unless score $attack.counter.magics.rods.scope counter matches 1.. unless score @a[tag=attack.weapons.magics.rods.user,sort=nearest,limit=1] mp >= $attack.mp.explosion constants run tellraw @a[tag=attack.weapons.magics.rods.user,sort=nearest,limit=1] {"text": "MPが足りません!","bold": true}  
execute unless score $attack.counter.magics.rods.scope counter matches 1.. unless score @a[tag=attack.weapons.magics.rods.user,sort=nearest,limit=1] mp >= $attack.mp.explosion constants run kill @s
execute unless score $attack.counter.magics.rods.scope counter matches 1.. unless score @a[tag=attack.weapons.magics.rods.user,sort=nearest,limit=1] mp >= $attack.mp.explosion constants run return 0
execute unless score $attack.counter.magics.rods.scope counter matches 1.. if score @a[tag=attack.weapons.magics.rods.user,sort=nearest,limit=1] mp >= $attack.mp.explosion constants run scoreboard players remove @a[tag=attack.weapons.magics.rods.user,sort=nearest,limit=1] mp 20

# pros
tp ^ ^ ^0.5
particle end_rod ~ ~ ~ 0 0 0 0 2 normal
execute if entity @a[distance=..0.5,limit=1,sort=nearest,tag=!attack.weapons.magics.rods.user] run tag @s add attack.magics.rod.detect.player

execute if score $attack.weapons.magics.rods.elements datas matches 0 if entity @a[distance=..0.5,limit=1,sort=nearest,tag=!attack.weapons.magics.rods.user] run damage @a[distance=..0.5,limit=1] 5 explosion by @a[tag=attack.weapons.magics.rods.user,limit=1]
execute if score $attack.weapons.magics.rods.elements datas matches 1 if entity @a[distance=..0.5,limit=1,sort=nearest,tag=!attack.weapons.magics.rods.user] run damage @a[distance=..0.5,limit=1] 5 explosion by @a[tag=attack.weapons.magics.rods.user,limit=1]
execute if score $attack.weapons.magics.rods.elements datas matches 2 if entity @a[distance=..0.5,limit=1,sort=nearest,tag=!attack.weapons.magics.rods.user] run damage @a[distance=..0.5,limit=1] 1 explosion by @a[tag=attack.weapons.magics.rods.user,limit=1]
execute if score $attack.weapons.magics.rods.elements datas matches 3 if entity @a[distance=..0.5,limit=1,sort=nearest,tag=!attack.weapons.magics.rods.user] run damage @a[distance=..0.5,limit=1] 6 explosion by @a[tag=attack.weapons.magics.rods.user,limit=1]
execute if score $attack.weapons.magics.rods.elements datas matches 4 if entity @a[distance=..0.5,limit=1,sort=nearest,tag=!attack.weapons.magics.rods.user] run damage @a[distance=..0.5,limit=1] 1 explosion by @a[tag=attack.weapons.magics.rods.user,limit=1]


execute if entity @a[distance=..0.5,limit=1,sort=nearest,tag=!attack.weapons.magics.rods.user] run playsound entity.lightning_bolt.impact player @a[distance=..0.5,limit=1]
execute if entity @a[distance=..0.5,limit=1,sort=nearest,tag=!attack.weapons.magics.rods.user] at @a[distance=..0.5,limit=1] run particle explosion ~ ~ ~ 1 1 1 1 3 normal
execute if entity @a[distance=..0.5,limit=1,sort=nearest,tag=!attack.weapons.magics.rods.user] run kill @s[tag=attack.magics.rod.detect.player]
execute unless block ~ ~ ~ #libs:as_air run tag @s add attack.magics.rod.detect.wall
kill @s[tag=attack.magics.rod.detect.wall]
execute unless block ~ ~ ~ #libs:as_air run return 0
scoreboard players add $attack.counter.magics.rods.scope counter 1
execute if score $attack.counter.magics.rods.scope counter >= $attack.magics.rods.scope constants run kill @s
execute if score $attack.counter.magics.rods.scope counter >= $attack.magics.rods.scope constants run return 0
execute positioned as @s run function systems:weapons/magics/books/actions/explosion