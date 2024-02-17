#> systems:weapons/swords/additional_damage/end
# @within systems:weapons/swords/end

# damage and sound
    damage @s 40 libs:weapons/swords/end by @p[distance=0.01..,tag=weapons.swords.attacker.end,limit=1]
    playsound block.end_portal.spawn player @s ~ ~ ~
