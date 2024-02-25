# data get
    execute store result score #Magic.Using.Mana Temporary run data get storage attack:settings Main.Weapons.Magics.Spells.UsingMana.Debility

# mana check
    execute unless function systems:weapons/magics/spells/effects/common/lack run return fail

# vfx
    playsound entity.wither_skeleton.death player @s ~ ~ ~
    particle dust 0 0 0 1 ~ ~ ~ 1 1 1 0.5 100 normal

# call
    execute if entity @s[team=RedTeam] run effect give @a[team=BlueTeam] wither 10 9 true
    execute if entity @s[team=BlueTeam] run effect give @a[team=RedTeam] wither 10 9 true

# consume
    function systems:weapons/magics/spells/effects/common/finish