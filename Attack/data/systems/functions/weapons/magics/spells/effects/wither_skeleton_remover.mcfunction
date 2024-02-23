# data get
    execute store result score #Magic.Using.Mana Temporary run data get storage attack:settings Main.Weapons.Magics.Spells.UsingMana.WitherSkeletonRemover

# mana check
    execute unless function systems:weapons/magics/spells/effects/common/lack run return fail

# vfx
    playsound entity.skeleton.death player @s ~ ~ ~
    particle dust 0 0 0 1 ~ ~ ~ 1 1 1 0.5 1000 normal

# call
    execute if entity @s[team=redTeam] run kill @e[type=wither_skeleton,team=blueTeam]
    execute if entity @s[team=blueTeam] run kill @e[type=wither_skeleton,team=redTeam]

# consume
    function systems:weapons/magics/spells/effects/common/finish