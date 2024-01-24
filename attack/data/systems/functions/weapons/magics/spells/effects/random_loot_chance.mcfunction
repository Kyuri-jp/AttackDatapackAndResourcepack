#mana check
execute if score @s countMana < $attack.mana.randomLootChance constants run tellraw @s {"text":"マナが足りません！","bold":true}
execute if score @s countMana < $attack.mana.randomLootChance constants run loot give @s loot loots:weapons/spells/mana
execute if score @s countMana < $attack.mana.randomLootChance constants run return 0

#vfx
playsound block.chest.open player @s ~ ~ ~
particle composter ~ ~ ~ 1 1 1 0.5 200 normal

#call
loot give @s loot loots:spells/random_loot_chance

#consume
clear @s arrow{mana:true} 7

#break
function systems:weapons/magics/spells/break