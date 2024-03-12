#> systems:game/scope_over/preparation
#
# 準備中の処理
#
# @within systems:game/scope_over/

# pros
    effect give @s jump_boost 1 255 true
    tp @s @e[type=armor_stand,tag=Anchor.DefaultSpawnPoint,limit=1]
    scoreboard players reset @s ScopeOver
