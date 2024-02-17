# show info
    execute as @a[tag=Player.CoolDownNow] at @s run function systems:game/respawn/cool_time/info

# remove counter
    scoreboard players remove @a[tag=Player.CoolDownNow] coolDownCounter 1

# rebone
    execute as @a[tag=Player.CoolDownNow] if score @s coolDownCounter matches ..0 run function systems:game/respawn/

# return
    execute unless entity @a[tag=Player.CoolDownNow] run return 0

# recall
    schedule function systems:game/respawn/cool_time/count_down 1t