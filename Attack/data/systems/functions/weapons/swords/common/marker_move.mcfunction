#> systems:weapons/swords/common/marker_move
#
# Markerを移動します
#
# @within
#   systems:weapons/swords/common/marker_move
#   systems:weapons/swords/common/detect_victim

#> Victim Tag
# @within
#   systems:weapons/swords/common/marker_move
#   systems:weapons/swords/common/detect_victim
#   systems:weapons/swords/sword_selector
    #declare tag Entity.Sword.Victim

# move
    tp @s ^ ^ ^0.5

# detect player
    execute as @e[type=#assets:can_give_damage,tag=!Player.Attacker.This,distance=..0.5] store result score @s AttackerID on attacker run scoreboard players get @s PlayerID
    execute as @e[type=#assets:can_give_damage] if score @s AttackerID = @a[tag=Player.Attacker.This,limit=1] PlayerID run tag @s add Entity.Sword.Victim

# return
    execute if entity @e[tag=Entity.Sword.Victim] run return 0

# recall
    execute positioned as @s run function systems:weapons/swords/common/marker_move