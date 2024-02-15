# return
    execute unless score @s useCarrotStick matches 1.. run return 0

# start button
    execute unless predicate libs:is_sneaking if predicate libs:items/operator/buttons/start run scoreboard players reset @s useCarrotStick
    execute if predicate libs:is_sneaking if predicate libs:items/operator/buttons/start run function systems:buttons/operator/start

## setting button
    execute if predicate libs:items/operator/buttons/setting run function systems:buttons/actions/setting