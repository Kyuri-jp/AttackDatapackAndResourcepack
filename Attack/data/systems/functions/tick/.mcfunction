#> systems:tick/
# @within function core:tick

# button
    function systems:operator/items/buttons

# team set
    function systems:wait_room/team/set

# structure
    function systems:game/structure/set/

# as at
    execute as @a at @s run function systems:tick/as_at

# scope over
    function systems:game/scope_over/

# Mp heal
    function systems:tick/delay_tick/