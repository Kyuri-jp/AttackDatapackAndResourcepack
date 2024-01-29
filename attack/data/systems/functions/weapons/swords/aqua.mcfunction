# vfx
    particle minecraft:falling_water ~ ~1 ~ 0 0 0 0.1 500
    playsound minecraft:block.grass.break player @s ~ ~ ~

# add tag
    tag @s add weapons.swords.damage.additional_damage.aqua

# damage
    function systems:weapons/swords/additional_damage/aqua

# revoke
    advancement revoke @s only libs:weapons/swords/aqua
