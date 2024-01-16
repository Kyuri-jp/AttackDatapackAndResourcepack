#detect
execute as @a at @s if entity @s[y=-38,dy=0,team=!watch,team=!preparation,tag=game.players.playing] if entity @e[type=armor_stand,tag=game.anchor.players.over.place.kill,distance=..40] run scoreboard players set @s bool 1

#return
execute as @a at @s if entity @s[y=-38,dy=0,team=preparation,tag=game.players.playing] if entity @e[type=armor_stand,tag=game.anchor.players.over.place.kill,distance=..40] run effect give @s jump_boost 1 255 true
execute as @a at @s if entity @s[y=-38,dy=0,team=preparation,tag=game.players.playing] if entity @e[type=armor_stand,tag=game.anchor.players.over.place.kill,distance=..40] run tp @s @e[type=armor_stand,tag=game.anchor.set.spawn,limit=1]

#kill
execute as @a[scores={bool=1}] run gamerule showDeathMessages false
execute as @a[scores={bool=1}] run kill @s
execute as @a[scores={bool=1}] run tellraw @a ["",{"selector":"@s"},{"text":"はフィールドの外に落ちた"}]
execute as @a[scores={bool=1}] run gamerule showDeathMessages true

#reset
scoreboard players reset @a[scores={bool=1}] bool