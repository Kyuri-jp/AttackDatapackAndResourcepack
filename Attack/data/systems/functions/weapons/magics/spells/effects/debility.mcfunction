# data get
    execute store result score #Magic.Using.Mana Temporary run data get storage attack:settings Main.Weapons.Magics.Spells.UsingMana.Debility

# mana check
    execute unless function systems:weapons/magics/spells/effects/common/lack run return fail

# vfx
    playsound entity.wither_skeleton.death player @s ~ ~ ~
    particle dust 0 0 0 1 ~ ~ ~ 1 1 1 0.5 100 normal

# call
    execute if entity @s[team=redTeam] run effect give @a[team=blueTeam] wither 10 9 true
    execute if entity @s[team=blueTeam] run effect give @a[team=redTeam] wither 10 9 true

# consume
    function systems:weapons/magics/spells/effects/common/finish