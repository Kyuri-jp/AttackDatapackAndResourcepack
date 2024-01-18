#mana check
execute if score @s countMana < $attack.mana.getSomeMana spellsUseMana run tellraw @s {"text":"マナが足りません！","bold":true}
execute if score @s countMana < $attack.mana.getSomeMana spellsUseMana run give @s arrow{mana:true,CustomModelData:1}
execute if score @s countMana < $attack.mana.getSomeMana spellsUseMana run return 0

#vfx
playsound entity.experience_orb.pickup player @s ~ ~ ~
particle witch ~ ~ ~ 1 1 1 0.5 200 normal

#call
loot give @s loot loots:spells/get_some_mana

#consume
clear @s arrow{mana:true} 2