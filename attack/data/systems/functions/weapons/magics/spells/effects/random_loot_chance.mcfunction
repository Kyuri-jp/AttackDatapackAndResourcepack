#mana check
execute if score @s countMana < $attack.mana.randomLootChance spellsUseMana run tellraw @s {"text":"マナが足りません！","bold":true}
execute if score @s countMana < $attack.mana.randomLootChance spellsUseMana run give @s arrow{mana:true,CustomModelData:1}
execute if score @s countMana < $attack.mana.randomLootChance spellsUseMana run return 0

#vfx
playsound block.chest.open player @s ~ ~ ~
particle composter ~ ~ ~ 1 1 1 0.5 200 normal

#call
loot give @s loot loots:spells/random_loot_chance

#consume
clear @s arrow{mana:true} 7