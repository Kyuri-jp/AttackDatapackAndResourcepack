# data get
    execute store result score #Magic.Using.Mana temporary run data get storage storage:settings Main.Weapons.Magics.Spells.UsingMana.HealPlus

# mana check
    function systems:weapons/magics/spells/effects/common/lack
    execute if score #Magic.Spell.LackMana temporary matches 1 run return 0

# vfx
    playsound block.brewing_stand.brew player @s ~ ~ ~
    particle heart ~ ~ ~ 1 1 1 0.5 100 normal

# call
    effect give @s instant_health 1 7 false
    effect give @s saturation 1 7 false

# consume
    function systems:weapons/magics/spells/effects/common/finish