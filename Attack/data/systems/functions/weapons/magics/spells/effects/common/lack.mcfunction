#> systems:weapons/magics/spells/effects/common/lack
# @within systems:weapons/magics/spells/effects/*

# mana check
    execute if score @s manaCounter < #Magic.Using.Mana temporary run tellraw @s {"interpret":true,"nbt":"Main.Weapons.Lack.Mana","storage":"attack:messages"}
    execute if score @s manaCounter < #Magic.Using.Mana temporary run loot give @s loot assets:weapons/spells/mana
    execute if score @s manaCounter < #Magic.Using.Mana temporary run scoreboard players set #Magic.Spell.LackMana temporary 1