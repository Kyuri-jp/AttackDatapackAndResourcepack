# data get
    execute store result score #Magic.Using.Mana Temporary run data get storage attack:settings Main.Weapons.Magics.Spells.UsingMana.Invincible

# mana check
    execute unless function systems:weapons/magics/spells/effects/common/lack run return fail

# vfx
    playsound ui.button.click player @s ~ ~ ~
    particle dust 1 0.933 0 1 ~ ~ ~ 1 1 1 0.5 100 normal

# call
    effect give @s resistance 12 9 true
    effect give @s regeneration 12 9 true

# consume
    function systems:weapons/magics/spells/effects/common/finish