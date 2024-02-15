#> systems:tick
# @within function core:tick

function systems:operator/items/buttons
function systems:wait_room/team/set
function systems:game/set/
execute as @a at @s run function systems:as_at
function systems:game/scope_over
scoreboard players add $game.mp.heal counter 1
execute if score $game.mp.heal counter matches 10.. run function systems:mp_heal
