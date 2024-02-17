#> systems:weapons/swords/additional_damage/end
# @within systems:weapons/swords/end

# damage and sound
    damage @s 40 assets:weapons/swords/end by @p[distance=0.01..,tag=Player.Sword.Attacker.End,limit=1]
    playsound block.end_portal.spawn player @s ~ ~ ~
