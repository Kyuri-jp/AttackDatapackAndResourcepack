execute as @a[tag=game.coolDownNow] if score @s timer matches 60 run tellraw @s {"text": "3 seconds to respawn...","bold": true,"color": "gold"}
execute as @a[tag=game.coolDownNow] if score @s timer matches 40 run tellraw @s {"text": "2 seconds to respawn...","bold": true,"color": "gold"}
execute as @a[tag=game.coolDownNow] if score @s timer matches 20 run tellraw @s {"text": "1 second to respawn...","bold": true,"color": "gold"}

execute as @a[tag=game.coolDownNow] at @s if score @s timer matches 60 run playsound ui.button.click player @s ~ ~ ~ 1 0.4
execute as @a[tag=game.coolDownNow] at @s if score @s timer matches 40 run playsound ui.button.click player @s ~ ~ ~ 1 0.8
execute as @a[tag=game.coolDownNow] at @s if score @s timer matches 20 run playsound ui.button.click player @s ~ ~ ~ 1 1.2

scoreboard players remove @a[tag=game.coolDownNow] timer 1

execute as @a[tag=game.coolDownNow] if score @s timer matches ..0 run data modify entity @e[type=armor_stand,tag=game.anchor.set.spawn,limit=1] Rotation set from entity @s Rotation
execute as @a[tag=game.coolDownNow] if score @s timer matches ..0 run tp @s @e[type=armor_stand,tag=game.anchor.set.spawn,limit=1]
execute as @a[tag=game.coolDownNow] if score @s timer matches ..0 run effect give @s instant_health 3 5
execute as @a[tag=game.coolDownNow] if score @s timer matches ..0 run effect give @s saturation 3 5
execute as @a[tag=game.coolDownNow] if score @s timer matches ..0 run effect clear @s
execute as @a[tag=game.coolDownNow] if score @s timer matches ..0 run tag @s remove game.coolDownNow
execute as @a[tag=game.coolDownNow] if score @s timer matches ..0 run scoreboard players reset @s timer

execute unless entity @a[tag=game.coolDownNow] run return 0
schedule function systems:game/respawn/cool_time/count_down 1t