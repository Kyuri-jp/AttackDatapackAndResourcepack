#> systems:weapons/magics/spells/effects/common/lack
# @within systems:weapons/magics/spells/effects/*

# mana check
    execute if score @s ManaCounter < #Magic.Using.Mana Temporary run tellraw @s {"translate":"item.lore.weapons.magics.lack.mana","bold":true}
    execute if score @s ManaCounter < #Magic.Using.Mana Temporary run loot give @s loot assets:weapons/spells/mana
    execute if score @s ManaCounter < #Magic.Using.Mana Temporary run return fail

# return
    return 1