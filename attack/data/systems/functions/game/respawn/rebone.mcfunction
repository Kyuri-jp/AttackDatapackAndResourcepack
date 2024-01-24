data modify entity @e[type=armor_stand,tag=game.anchor.set.spawn,limit=1] Rotation set from entity @s Rotation
tp @s @e[type=armor_stand,tag=game.anchor.set.spawn,limit=1]
effect give @s instant_health 3 5
effect give @s saturation 3 5
effect clear @s
tag @s remove game.coolDownNow
scoreboard players reset @s timer
attribute @s generic.max_health base set 40