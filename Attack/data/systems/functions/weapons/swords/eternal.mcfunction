#> systems:weapons/swords/eternal

#> Tag
# @within
#   systems:weapons/swords/eternal
#   systems:weapons/swords/additional_damage/eternal
    #declare tag Player.Sword.Attacker.Eternal

# vfx
    particle enchant ~ ~1 ~ 0 0 0 0.1 500
    playsound block.beacon.activate player @s ~ ~ ~
    playsound block.beacon.activate player @s ~ ~ ~ 1 1.5

# damage
    execute on attacker run tag @s add Player.Sword.Attacker.Eternal
    execute if predicate assets:items/weapons/swords/random/eternal run function systems:weapons/swords/additional_damage/eternal

# reset
    scoreboard players reset @s AttackerID
    tag @p[tag=Player.Sword.Attacker.Eternal] remove Player.Sword.Attacker.Eternal

# revoke
    advancement revoke @s only assets:weapons/swords/eternal
