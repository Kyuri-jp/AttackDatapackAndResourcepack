#mana check
execute if score @s countMana < $attack.mana.heal spellsUseMana run tellraw @s {"text":"マナが足りません！","bold":true}
execute if score @s countMana < $attack.mana.heal spellsUseMana run give @s arrow{mana:true,CustomModelData:1}
execute if score @s countMana < $attack.mana.heal spellsUseMana run return 0

#vfx
playsound block.brewing_stand.brew player @s ~ ~ ~
particle heart ~ ~ ~ 1 1 1 0.5 100 normal

#call
effect give @s instant_health 1 5 false

#consume
clear @s arrow{mana:true} 1