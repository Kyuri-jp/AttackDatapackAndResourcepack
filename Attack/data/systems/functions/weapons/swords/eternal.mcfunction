#> systems:weapons/swords/eternal

#> tag
# @within
#   systems:weapons/swords/eternal
#   systems:weapons/swords/additional_damage/eternal
    #declare tag Player.Sword.Attacker.Eternal

# vfx
    particle minecraft:enchant ~ ~1 ~ 0 0 0 0.1 500
    playsound minecraft:block.beacon.activate player @s ~ ~ ~

# damage
    execute on attacker run tag @s add weapons.swords.attacker.eternal
    execute if predicate assets:items/weapons/swords/random/eternal run function systems:weapons/swords/additional_damage/eternal

# reset
    scoreboard players reset @s attackerID
    tag @p[tag=Player.Sword.Attacker.Eternal] remove weapons.swords.attacker.eternal

# revoke
    advancement revoke @s only assets:weapons/swords/eternal
