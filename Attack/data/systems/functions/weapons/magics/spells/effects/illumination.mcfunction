# data get
    execute store result score #Magic.Using.Mana Temporary run data get storage attack:settings Main.Weapons.Magics.Spells.UsingMana.Illumination

# mana check
    execute unless function systems:weapons/magics/spells/effects/common/lack run return fail

# vfx
    playsound block.beacon.activate player @s ~ ~ ~
    particle end_rod ~ ~ ~ 1 1 1 0.5 100 normal

# call
    execute if entity @s[team=RedTeam] run effect give @a[team=BlueTeam] glowing 15 0 true
    execute if entity @s[team=BlueTeam] run effect give @a[team=RedTeam] glowing 15 0 true

# consume
    function systems:weapons/magics/spells/effects/common/finish