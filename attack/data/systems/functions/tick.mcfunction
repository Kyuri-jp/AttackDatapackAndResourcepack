function systems:operator/items/buttons
function systems:wait_room/team/set
function systems:game/set/set
execute as @a at @s if score @s useFungusStick matches 1.. run function systems:weapons/magics/rods/used
execute as @a at @s run function systems:as_at
function systems:game/scope_over
scoreboard players add $attack.game.mp.heal counter 1
execute if score $attack.game.mp.heal counter matches 10.. run function systems:mp_heal