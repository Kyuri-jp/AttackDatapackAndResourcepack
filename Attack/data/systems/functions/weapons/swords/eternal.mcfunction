# vfx
    particle minecraft:enchant ~ ~1 ~ 0 0 0 0.1 500
    playsound minecraft:block.beacon.activate player @s ~ ~ ~

# damage
    execute on attacker run tag @s add weapons.swords.attacker.eternal
    execute if predicate libs:items/weapons/swords/random/eternal run function systems:weapons/swords/additional_damage/eternal

# reset
    scoreboard players reset @s attackerID
    tag @p[tag=attack.attacker.eternal] remove weapons.swords.attacker.eternal

# revoke
    advancement revoke @s only libs:weapons/swords/eternal
