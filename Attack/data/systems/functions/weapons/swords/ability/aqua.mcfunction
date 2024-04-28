#> systems:weapons/swords/ability/aqua

#> Tag
# @within
#   systems:weapons/swords/ability/aqua
#   systems:weapons/swords/ability/additional_damage/aqua
#   systems:weapons/swords/ability/additional_damage/reset/aqua
    #declare tag Player.Sword.Damaged.Aqua

# vfx
    particle falling_water ~ ~1 ~ 0 0 0 0.1 500
    playsound entity.player.splash player @s ~ ~ ~
    playsound entity.player.splash.high_speed player @s ~ ~ ~

# add tag
    tag @s add Player.Sword.Damaged.Aqua
    execute on attacker run scoreboard players operation @p[tag=Player.Sword.Damaged.Aqua,limit=1] AttackerID = @s PlayerID

# damage
    function systems:weapons/swords/ability/additional_damage/aqua

# revoke
    advancement revoke @s only assets:weapons/swords/aqua
