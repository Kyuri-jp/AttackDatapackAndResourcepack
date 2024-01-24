execute as @a[tag=game.coolDownNow] at @s run function systems:game/respawn/cool_time/info

scoreboard players remove @a[tag=game.coolDownNow] timer 1

execute as @a[tag=game.coolDownNow] if score @s timer matches ..0 run function systems:game/respawn/rebone

execute unless entity @a[tag=game.coolDownNow] run return 0
schedule function systems:game/respawn/cool_time/count_down 1t