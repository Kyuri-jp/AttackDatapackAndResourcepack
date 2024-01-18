#mana count
execute store result score @s countMana run clear @s arrow{mana:true} 0
scoreboard players add @s countMana 1

execute if predicate api:items/weapons/magics/spells/get_some_mana run function systems:weapons/magics/spells/effects/get_some_mana
execute if predicate api:items/weapons/magics/spells/random_loot_chance run function systems:weapons/magics/spells/effects/random_loot_chance
execute if predicate api:items/weapons/magics/spells/chest_reload run function systems:weapons/magics/spells/effects/chest_reload