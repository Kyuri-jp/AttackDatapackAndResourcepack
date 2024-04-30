#> systems:weapons/swords/common/detect_victim
#
# 攻撃されたプレイヤーを特定します
#
# @within
#   systems:weapons/swords/common/detect_victim
#   systems:weapons/swords/sword_selector

#> Marker Tag
# @private
    #declare tag Entity.Marker.DetectVictim

# summon marker
    summon marker ~ ~ ~ {Tags:["Entity.Marker.DetectVictim"]}
    execute at @s run tp @e[type=marker,tag=Entity.Marker.DetectVictim,distance=..0.01,limit=1] ~ ~ ~ ~ ~

# move
    execute as @e[type=marker,tag=Entity.Marker.DetectVictim,distance=..0.01,limit=1] at @s run function systems:weapons/swords/common/marker_move

# reset
    scoreboard players reset @e[type=#assets:can_give_damage] AttackerID
    kill @e[type=marker,tag=Entity.Marker.DetectVictim,limit=1]