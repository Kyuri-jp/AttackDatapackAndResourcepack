#> systems:weapons/magics/spells/effects/common/lack
# @within systems:weapons/magics/spells/effects/*

# mana check
    execute if score @s manaCounter < $using.mana temporary run tellraw @s {"interpret":true,"nbt":"Main.Weapons.Lack.Mana","storage":"storage:messages"}
    execute if score @s manaCounter < $using.mana temporary run loot give @s loot loots:weapons/spells/mana
    execute if score @s manaCounter < $using.mana temporary run scoreboard players set $weapons.magics.books.lackMana temporary 1