#> systems:weapons/swords/aqua

#> tag
# @within
#   systems:weapons/swords/aqua
#   systems:weapons/swords/additional_damage/aqua
#   systems:weapons/swords/additional_damage/reset/aqua
    #declare tag Player.Sword.Damaged.Aqua

# vfx
    particle minecraft:falling_water ~ ~1 ~ 0 0 0 0.1 500
    playsound minecraft:entity.player.splash player @s ~ ~ ~

# add tag
    tag @s add Player.Sword.Damaged.Aqua
    execute on attacker run scoreboard players operation @p[tag=Player.Sword.Damaged.Aqua,limit=1] attackerID = @s playerID

# damage
    function systems:weapons/swords/additional_damage/aqua

# revoke
    advancement revoke @s only assets:weapons/swords/aqua
