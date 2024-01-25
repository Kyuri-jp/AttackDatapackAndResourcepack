# breakChests
execute as @e[type=text_display,tag=game.anchor.break.chest] at @s run fill ~1 ~ ~1 ~-1 ~ ~-1 air replace chest
execute at @e[type=armor_stand,tag=game.anchor.set.chest.tire3] run fill ~1 ~ ~1 ~-1 ~ ~-1 air replace chest
execute at @e[type=armor_stand,tag=game.anchor.set.chest.tire5] run fill ~1 ~ ~1 ~-1 ~ ~-1 air replace chest

# removeItems
execute as @e[type=item] at @s if entity @e[type=text_display,tag=game.anchor.break.chest,distance=..3] run tag @s add items.remove
execute as @e[type=item] at @s if entity @e[type=armor_stand,tag=game.anchor.set.chest.tire3,distance=..3] run tag @s add items.remove
execute as @e[type=item] at @s if entity @e[type=armor_stand,tag=game.anchor.set.chest.tire5,distance=..3] run tag @s add items.remove
kill @e[type=item,tag=items.remove]
kill @e[type=text_display,tag=game.anchor.break.chest]