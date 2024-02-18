#> systems:weapons/swords/additional_damage/end
# @within systems:weapons/swords/end

# damage and sound
    damage @s 40 assets:weapons/swords/end by @p[tag=Player.Sword.Attacker.End,distance=0.01..,limit=1]
    playsound block.end_portal.spawn player @s ~ ~ ~
