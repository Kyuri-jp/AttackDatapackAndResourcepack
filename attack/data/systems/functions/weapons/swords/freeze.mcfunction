# vfx
    particle minecraft:block blue_ice ~ ~1 ~ 0 0 0 0.1 500
    playsound minecraft:block.glass.break player @s ~ ~ ~ 1 1.5

# set tag
    tag @s add weapons.swords.damage.additional_damage.freeze
    execute on attacker run scoreboard players operation @p[tag=weapons.swords.damage.additional_damage.freeze,limit=1] attackerID = @s playerID

# damage
    function systems:weapons/swords/additional_damage/freeze

# revoke
    advancement revoke @s only libs:weapons/swords/freeze
