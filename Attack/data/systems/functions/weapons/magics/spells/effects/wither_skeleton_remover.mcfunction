# data get
    execute store result score #Magic.Using.Mana Temporary run data get storage attack:settings Main.Weapons.Magics.Spells.UsingMana.WitherSkeletonRemover

# mana check
    execute unless function systems:weapons/magics/spells/effects/common/lack run return fail

# vfx
    playsound entity.skeleton.death player @s ~ ~ ~
    particle dust 0 0 0 1 ~ ~ ~ 1 1 1 0.5 1000 normal

# call
    execute if entity @s[team=RedTeam] run kill @e[type=wither_skeleton,team=BlueTeam]
    execute if entity @s[team=BlueTeam] run kill @e[type=wither_skeleton,team=RedTeam]

# consume
    function systems:weapons/magics/spells/effects/common/finish