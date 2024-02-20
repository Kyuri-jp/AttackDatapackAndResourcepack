#> systems:weapons/magics/spells/effects/common/lack
# @within systems:weapons/magics/spells/effects/*

# mana check
    execute if score @s manaCounter < #Magic.Using.Mana temporary run tellraw @s {"translate":"item.lore.weapons.magics.lack.mana","bold":true}
    execute if score @s manaCounter < #Magic.Using.Mana temporary run loot give @s loot assets:weapons/spells/mana
    execute if score @s manaCounter < #Magic.Using.Mana temporary run scoreboard players set #Magic.Spell.LackMana temporary 1