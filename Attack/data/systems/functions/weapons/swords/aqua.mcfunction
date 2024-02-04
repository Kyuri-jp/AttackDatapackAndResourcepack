# vfx
    particle minecraft:falling_water ~ ~1 ~ 0 0 0 0.1 500
    playsound minecraft:entity.player.splash player @s ~ ~ ~

# add tag
    tag @s add weapons.swords.damage.additional_damage.aqua
    execute on attacker run scoreboard players operation @p[tag=weapons.swords.damage.additional_damage.aqua,limit=1] attackerID = @s playerID

# damage
    function systems:weapons/swords/additional_damage/aqua

# revoke
    advancement revoke @s only libs:weapons/swords/aqua
