# data get
    execute store result score #Magic.Using.Mana Temporary run data get storage attack:settings Main.Weapons.Magics.Spells.UsingMana.HealPlus

# mana check
    execute unless function systems:weapons/magics/spells/effects/common/lack run return fail

# vfx
    playsound block.brewing_stand.brew player @s ~ ~ ~
    particle heart ~ ~ ~ 1 1 1 0.5 100 normal

# call
    effect give @s instant_health 1 7 false
    effect give @s saturation 1 7 false

# consume
    function systems:weapons/magics/spells/effects/common/finish