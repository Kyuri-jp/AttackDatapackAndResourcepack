# mana check
execute if score @s datas < $attack.mana.heal constants run tellraw @s {"text":"マナが足りません！","bold":true}
execute if score @s datas < $attack.mana.heal constants run loot give @s loot loots:weapons/spells/mana
execute if score @s datas < $attack.mana.heal constants run return 0

# vfx
playsound block.brewing_stand.brew player @s ~ ~ ~
particle heart ~ ~ ~ 1 1 1 0.5 100 normal

# call
effect give @s instant_health 1 5 false
effect give @s saturation 1 10 false

# consume
clear @s arrow{mana:true} 1

# break
function systems:weapons/magics/spells/break