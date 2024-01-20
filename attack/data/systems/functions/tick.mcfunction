function systems:operator/items/buttons
function systems:wait_room/back_for_room
function systems:wait_room/team/set
function systems:game/set/set
execute as @a at @s if entity @e[type=arrow,distance=..2] if predicate api:items/weapons/magics/spells/have_spell run function systems:weapons/magics/spells/detect_used
execute as @a at @s if entity @e[type=arrow,distance=..2] if predicate api:items/weapons/magics/spells/have_spell_in_off_hand run function systems:weapons/magics/spells/have_offhand
execute as @a at @s run function systems:items/used
execute as @a at @s if entity @s[y=-32,dy=0] if entity @e[type=armor_stand,tag=waitRoom.anchor.teleporter,distance=..18] run function systems:game/scope_over