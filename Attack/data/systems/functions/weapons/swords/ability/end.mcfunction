#> systems:weapons/swords/ability/end

#> Tag
# @within
#   systems:weapons/swords/ability/end
#   systems:weapons/swords/ability/additional_damage/end
#   systems:weapons/swords/ability/additional_damage/reset/tag_remover
    #declare tag Player.Sword.Attacker.End

# action
    effect give @s darkness 10 0 false

# vfx
    particle dust_color_transition 0 0 0 1 1 1 1 ~ ~0.8 ~ 0 0 0 0.8 200
    playsound entity.ender_dragon.ambient player @s ~ ~ ~
    playsound entity.ender_dragon.hurt player @s ~ ~ ~

# damage
    execute on attacker run tag @s add Player.Sword.Attacker.End
    execute if predicate assets:items/weapons/swords/random/end run function systems:weapons/swords/ability/additional_damage/end

# reset
    scoreboard players reset @s AttackerID
    tag @p[tag=Player.Sword.Attacker.End] remove Player.Sword.Attacker.End
