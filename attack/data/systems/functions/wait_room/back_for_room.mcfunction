playsound ui.button.click player @s ~ ~ ~
particle minecraft:enchant ~ ~ ~ 0 0 0 1.5 1000
data modify entity @e[type=armor_stand,tag=waitRoom.anchor.default.position,limit=1] Rotation set from entity @s Rotation
effect give @s jump_boost 1 255 true
tp @s @e[type=armor_stand,tag=waitRoom.anchor.default.position,limit=1]