#mana check
execute if score @s countMana < $attack.mana.getSomeMana constants run tellraw @s {"text":"マナが足りません！","bold":true}
execute if score @s countMana < $attack.mana.getSomeMana constants run loot give @s loot loots:weapons/spells/mana
execute if score @s countMana < $attack.mana.getSomeMana constants run return 0

#vfx
playsound entity.experience_orb.pickup player @s ~ ~ ~
particle witch ~ ~ ~ 1 1 1 0.5 200 normal

#call
loot give @s loot loots:spells/get_some_mana

#consume
clear @s arrow{mana:true} 2

#break
function systems:weapons/magics/spells/break