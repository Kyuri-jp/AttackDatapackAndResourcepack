#> systems:weapons/swords/sword_selector
#
# 剣の判別とダメージを与えられたエンティティの特定を行います
#
# @within assets:weapons/swords/hurt/*

#> Caller Tag
# @within
#   systems:weapons/swords/sword_selector
#   systems:weapons/swords/common/detect_victim
#   systems:weapons/swords/common/marker_move
    #declare tag Player.Attacker.This

# revoke
# 先にrevokeしないとCommand Chain Limitが来たら次使えなくなる
    advancement revoke @s only assets:weapons/swords/hurt/wooden
    advancement revoke @s only assets:weapons/swords/hurt/stone
    advancement revoke @s only assets:weapons/swords/hurt/iron
    advancement revoke @s only assets:weapons/swords/hurt/diamond
    advancement revoke @s only assets:weapons/swords/hurt/netherite

# remove tag
# ChainLimit用
    tag @s remove Player.Attacker.This

# set
    tag @s add Player.Attacker.This

# detect victim
    function systems:weapons/swords/common/detect_victim

# detect sword
    execute if predicate assets:items/weapons/swords/aqua as @e[type=#assets:can_give_damage,tag=Entity.Sword.Victim,limit=1] at @s run function systems:weapons/swords/ability/aqua
    execute if predicate assets:items/weapons/swords/end as @e[type=#assets:can_give_damage,tag=Entity.Sword.Victim,limit=1] at @s run function systems:weapons/swords/ability/end
    execute if predicate assets:items/weapons/swords/eternal as @e[type=#assets:can_give_damage,tag=Entity.Sword.Victim,limit=1] at @s run function systems:weapons/swords/ability/eternal
    execute if predicate assets:items/weapons/swords/flame as @e[type=#assets:can_give_damage,tag=Entity.Sword.Victim,limit=1] at @s run function systems:weapons/swords/ability/flame
    execute if predicate assets:items/weapons/swords/freeze as @e[type=#assets:can_give_damage,tag=Entity.Sword.Victim,limit=1] at @s run function systems:weapons/swords/ability/freeze
    execute if predicate assets:items/weapons/swords/frost as @e[type=#assets:can_give_damage,tag=Entity.Sword.Victim,limit=1] at @s run function systems:weapons/swords/ability/frost
    execute if predicate assets:items/weapons/swords/gravity as @e[type=#assets:can_give_damage,tag=Entity.Sword.Victim,limit=1] at @s run function systems:weapons/swords/ability/gravity
    execute if predicate assets:items/weapons/swords/magnet as @e[type=#assets:can_give_damage,tag=Entity.Sword.Victim,limit=1] at @s run function systems:weapons/swords/ability/magnet
    execute if predicate assets:items/weapons/swords/optical as @e[type=#assets:can_give_damage,tag=Entity.Sword.Victim,limit=1] at @s run function systems:weapons/swords/ability/optical
    execute if predicate assets:items/weapons/swords/photon as @e[type=#assets:can_give_damage,tag=Entity.Sword.Victim,limit=1] at @s run function systems:weapons/swords/ability/photon
    execute if predicate assets:items/weapons/swords/plateau as @e[type=#assets:can_give_damage,tag=Entity.Sword.Victim,limit=1] at @s run function systems:weapons/swords/ability/plateau
    execute if predicate assets:items/weapons/swords/poison as @e[type=#assets:can_give_damage,tag=Entity.Sword.Victim,limit=1] at @s run function systems:weapons/swords/ability/poison
    execute if predicate assets:items/weapons/swords/spider as @e[type=#assets:can_give_damage,tag=Entity.Sword.Victim,limit=1] at @s run function systems:weapons/swords/ability/spider
    execute if predicate assets:items/weapons/swords/wind as @e[type=#assets:can_give_damage,tag=Entity.Sword.Victim,limit=1] at @s run function systems:weapons/swords/ability/wind
    execute if predicate assets:items/weapons/swords/wither as @e[type=#assets:can_give_damage,tag=Entity.Sword.Victim,limit=1] at @s run function systems:weapons/swords/ability/wither

# reset
    tag @s remove Player.Attacker.This
    tag @e[tag=Entity.Sword.Victim] remove Entity.Sword.Victim
