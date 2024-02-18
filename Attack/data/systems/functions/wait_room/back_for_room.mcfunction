#> systems:wait_room/back_for_room
# @within systems:tick/as_at

# vfx
    playsound ui.button.click player @s ~ ~ ~
    particle enchant ~ ~ ~ 0 0 0 1.5 1000

# set rotation
    data modify entity @e[type=armor_stand,tag=Anchor.WaitRoom.DefaultPosition,limit=1] Rotation set from entity @s Rotation

# effect
    effect give @s jump_boost 1 255 true

# teleport
    tp @s @e[type=armor_stand,tag=Anchor.WaitRoom.DefaultPosition,limit=1]
