#> systems:events/detect_death
#
# プレイヤーの死亡を検知します
#
# @within systems:tick/as_at

# detect
    execute if score @s DeathDetecter matches 1.. run function systems:game/died/