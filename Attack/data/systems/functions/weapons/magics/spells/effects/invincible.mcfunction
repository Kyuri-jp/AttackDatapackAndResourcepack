# data get
    execute store result score $attack.using.mana temporary run data get storage storage:settings Main.Weapons.Magics.Spells.UsingMana.Invincible

# mana check
    execute if score @s manaCounter < $attack.using.mana temporary run tellraw @s {"interpret":true,"nbt":"Main.Weapons.Lack.Mana","storage":"storage:messages"}
    execute if score @s manaCounter < $attack.using.mana temporary run loot give @s loot loots:weapons/spells/mana
    execute if score @s manaCounter < $attack.using.mana temporary run return 0

# vfx
    playsound ui.button.click player @s ~ ~ ~ 
    particle dust 1 0.933 0 1 ~ ~ ~ 1 1 1 0.5 100 normal

# call
    effect give @s resistance 12 9 true
    effect give @s regeneration 12 9 true

# consume
    function systems:weapons/magics/spells/consume_mana

# break
    function systems:weapons/magics/spells/break
