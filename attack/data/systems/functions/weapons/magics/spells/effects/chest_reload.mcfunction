#mana check
execute if score @s countMana < $attack.mana.chestReload constants run tellraw @s {"text":"マナが足りません！","bold":true}
execute if score @s countMana < $attack.mana.chestReload constants run loot give @s loot loots:weapons/spells/mana
execute if score @s countMana < $attack.mana.chestReload constants run return 0

#vfx
playsound block.chest.locked player @s ~ ~ ~
particle enchant ~ ~ ~ 1 1 1 0.5 1000 normal

#call
function systems:preparation/chests/break/break
function systems:preparation/chests/set/chests/start

#consume
clear @s arrow{mana:true} 4

#break
function systems:weapons/magics/spells/break