# mana check
execute if score @s datas < $attack.mana.healMp constants run tellraw @s {"text":"マナが足りません！","bold":true}
execute if score @s datas < $attack.mana.healMp constants run loot give @s loot loots:weapons/spells/mana
execute if score @s datas < $attack.mana.healMp constants run return 0

# vfx
playsound entity.experience_orb.pickup player @s ~ ~ ~
particle end_rod ~ ~ ~ 1 1 1 0.5 50 normal

# call
scoreboard players add @s mp 20
function systems:safe_mp

# consume
clear @s arrow{mana:true} 2

# break
function systems:weapons/magics/spells/break