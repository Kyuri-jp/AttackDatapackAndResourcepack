# vfx
    playsound ui.button.click player @s ~ ~ ~
    particle minecraft:enchant ~ ~ ~ 0 0 0 1.5 1000

# set rotation
    data modify entity @e[type=armor_stand,tag=waitRoom.anchor.default.position,limit=1] Rotation set from entity @s Rotation

# effect
    effect give @s jump_boost 1 255 true

# teleport
    tp @s @e[type=armor_stand,tag=waitRoom.anchor.default.position,limit=1]
