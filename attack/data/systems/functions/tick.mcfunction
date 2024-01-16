function systems:operator/items/buttons
function systems:wait_room/back_for_room
function systems:wait_room/team/set
function systems:game/set/set
execute as @a[scores={useFungusStick=1..}] at @s run function systems:weapons/magics/rods/used
execute as @a at @s run function systems:items/used
execute as @a at @s if entity @s[y=-32,dy=0] if entity @e[type=armor_stand,tag=waitRoom.anchor.teleporter,distance=..18] run function systems:game/scope_over