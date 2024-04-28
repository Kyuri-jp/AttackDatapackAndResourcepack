#> systems:weapons/swords/detect_swords
#
# 剣の判別とダメージを与えられたエンティティの特定を行います
#
# @within assets:weapons/swords/hurt/*

#> Attacker Tag
# @private
    #declare tag Player.Sword.Attacker.Any

# detect victim
    tag @s add Player.Sword.Attacker.Any
    execute as @e[type=#assets:can_give_damage,distance=0.01..] 