#> systems:tick/
#
# systems内のtick処理
#
# @within function core:tick

# structure
    function systems:game/structure/set/

# as at
    execute as @a at @s run function systems:tick/as_at

# delay tick
    function systems:tick/delay_tick/