# show info
    execute as @a[tag=game.coolDownNow] at @s run function systems:game/respawn/cool_time/info

# remove counter
    scoreboard players remove @a[tag=game.coolDownNow] coolDownCounter 1

# rebone
    execute as @a[tag=game.coolDownNow] at @s if score @s coolDownCounter matches ..0 run function systems:game/respawn/

# return
    execute unless entity @a[tag=game.coolDownNow] run return 0

# recall
    schedule function systems:game/respawn/cool_time/count_down 1t