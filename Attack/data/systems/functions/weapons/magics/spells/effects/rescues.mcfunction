# data get
    execute store result score #Magic.Using.Mana Temporary run data get storage attack:settings Main.Weapons.Magics.Spells.UsingMana.Rescues

# mana check
    execute unless function systems:weapons/magics/spells/effects/common/lack run return fail

# vfx
    playsound block.beacon.deactivate player @s ~ ~ ~
    particle smoke ~ ~ ~ 1 1 1 0.5 100 normal

# call
    execute if entity @s[team=RedTeam] run effect give @a[team=BlueTeam] weakness 5 10 true
    execute if entity @s[team=BlueTeam] run effect give @a[team=RedTeam] weakness 5 10 true

# consume
    function systems:weapons/magics/spells/effects/common/finish