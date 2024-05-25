#> systems:game/respawn/cool_time/count_down
#
# タイマーをスタートします
#
# @within
#   systems:game/respawn/cool_time/count_down
#   systems:game/died/set_timer

# show info
    execute as @a[tag=Player.CoolDownNow] at @s run function systems:game/respawn/cool_time/info

# remove Counter
    scoreboard players remove @a[tag=Player.CoolDownNow] CoolDownCounter 1

# give items
    execute as @a[tag=Player.CoolDownNow] if score @s CoolDownCounter matches 1 positioned as @s run function libs:player_item_storage/get
    

# rebone
    execute as @a[tag=Player.CoolDownNow] if score @s CoolDownCounter matches ..0 run function systems:game/respawn/

# return
    execute unless entity @a[tag=Player.CoolDownNow] run return 0

# recall
    schedule function systems:game/respawn/cool_time/count_down 1t