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

#> Error Check Holder
# @private
    #declare score_holder #PlayerID.IDCheck

# error
    scoreboard players reset #PlayerID.IDCheck Temporary
    scoreboard players set #PlayerID.IDCheck Temporary 0
    execute store result score #PlayerID.IDCheck Temporary run scoreboard players get @s PlayerID
    execute if score #PlayerID.IDCheck Temporary matches ..0 run data merge storage error:info {Level:error,Path:"systems:weapons/swords/common/detect_victim",Message:"プレイヤーのIDが正しくない、もしくは存在しません",StackTrace:"PlayerID is wrong."}
    execute if score #PlayerID.IDCheck Temporary matches ..0 run return run function api:system/util/error_notice/


# summon marker
    summon marker ~ ~ ~ {Tags:["Entity.Marker.DetectVictim"]}
    execute at @s run tp @e[type=marker,tag=Entity.Marker.DetectVictim,distance=..0.01,limit=1] ~ ~ ~ ~ 0

# move
    execute as @e[type=marker,tag=Entity.Marker.DetectVictim,distance=..0.01,limit=1] at @s run function systems:weapons/swords/common/marker_move

# reset
    scoreboard players reset @e[type=#assets:can_give_damage] AttackerID
    kill @e[type=marker,tag=Entity.Marker.DetectVictim,limit=1]