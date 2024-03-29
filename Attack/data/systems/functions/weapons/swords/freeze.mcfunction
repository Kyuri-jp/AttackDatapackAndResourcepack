#> systems:weapons/swords/freeze

#> Damaged Tag
# @within
#   systems:weapons/swords/freeze
#   systems:weapons/swords/additional_damage/freeze
#   systems:weapons/swords/additional_damage/reset/freeze
    #declare tag Player.Sword.Damaged.Freeze

# vfx
    particle block blue_ice ~ ~1 ~ 0 0 0 0.1 500
    playsound block.glass.break player @s ~ ~ ~
    playsound block.glass.break player @s ~ ~ ~ 1 1.5

# set tag
    tag @s add Player.Sword.Damaged.Freeze
    execute on attacker run scoreboard players operation @p[tag=Player.Sword.Damaged.Freeze,limit=1] AttackerID = @s PlayerID

# damage
    function systems:weapons/swords/additional_damage/freeze

# revoke
    advancement revoke @s only assets:weapons/swords/freeze
