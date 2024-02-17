# data get
    execute store result score #Magic.Using.Mana temporary run data get storage storage:settings Main.Weapons.Magics.Spells.UsingMana.Invincible

# mana check
    function systems:weapons/magics/spells/effects/common/lack
    execute if score #Magic.Spell.LackMana temporary matches 1 run return 0

# vfx
    playsound ui.button.click player @s ~ ~ ~
    particle dust 1 0.933 0 1 ~ ~ ~ 1 1 1 0.5 100 normal

# call
    effect give @s resistance 12 9 true
    effect give @s regeneration 12 9 true

# consume
    function systems:weapons/magics/spells/effects/common/finish