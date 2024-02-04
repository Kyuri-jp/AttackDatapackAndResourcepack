# action
    effect give @s darkness 10 0 false

# vfx
    particle minecraft:dust_color_transition 0 0 0 1 1 1 1 ~ ~0.8 ~ 0 0 0 0.8 200
    playsound minecraft:entity.ender_dragon.ambient player @s ~ ~ ~

# damage
    execute on attacker run tag @s add weapons.swords.attacker.end
    execute if predicate libs:end run function systems:weapons/swords/additional_damage/end

# reset
    scoreboard players reset @s attackerID
    tag @p[tag=weapons.swords.attacker.end] remove weapons.swords.attacker.end

# revoke
    advancement revoke @s only libs:weapons/swords/end
