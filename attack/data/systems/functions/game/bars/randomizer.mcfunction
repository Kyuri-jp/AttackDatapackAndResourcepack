execute as @e[type=armor_stand,tag=game.anchor.bar] store result score @s random run random roll 1..3
execute as @e[type=armor_stand,tag=game.anchor.bar] if score @s random matches 1
execute as @e[type=armor_stand,tag=game.anchor.bar] if score @s random matches 2
execute as @e[type=armor_stand,tag=game.anchor.bar] if score @s random matches 3