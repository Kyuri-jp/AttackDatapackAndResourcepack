# mana count
execute store result score @s datas run clear @s arrow{mana:true} 0
scoreboard players add @s datas 1

execute if predicate libs:items/weapons/magics/spells/get_some_mana run function systems:weapons/magics/spells/effects/get_some_mana
execute if predicate libs:items/weapons/magics/spells/random_loot_chance run function systems:weapons/magics/spells/effects/random_loot_chance
execute if predicate libs:items/weapons/magics/spells/chest_reload run function systems:weapons/magics/spells/effects/chest_reload
execute if predicate libs:items/weapons/magics/spells/heal run function systems:weapons/magics/spells/effects/heal
execute if predicate libs:items/weapons/magics/spells/heal_mp run function systems:weapons/magics/spells/effects/heal_mp