#> systems:operator/buttons/used
#
# ボタンを使用した際の処理
#
# @within systems:tick/as_at

# return
    execute unless score @s UseCarrotStick matches 1.. run return fail

# start button
    execute unless predicate assets:is_sneaking if predicate assets:items/operator/buttons/start run scoreboard players reset @s UseCarrotStick
    execute if predicate assets:is_sneaking if predicate assets:items/operator/buttons/start run function systems:operator/buttons/actions/start

## setting button
    execute if predicate assets:items/operator/buttons/setting run function systems:operator/buttons/actions/setting