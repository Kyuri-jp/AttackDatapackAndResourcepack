# return
    execute unless score @s useCarrotStick matches 1.. run return 0

# start button
    execute unless predicate assets:is_sneaking if predicate assets:items/operator/buttons/start run scoreboard players reset @s useCarrotStick
    execute if predicate assets:is_sneaking if predicate assets:items/operator/buttons/start run function systems:operator/buttons/operator/start

## setting button
    execute if predicate assets:items/operator/buttons/setting run function systems:operator/buttons/actions/setting