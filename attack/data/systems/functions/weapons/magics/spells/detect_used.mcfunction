execute unless score @s useBow matches 20.. run give @s arrow{mana:true,CustomModelData:1}
execute if score @s useBow matches 20.. run function systems:weapons/magics/spells/detect_spells
kill @e[type=arrow,sort=nearest,limit=1]
scoreboard players reset @s useBow