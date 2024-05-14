#> systems:operator/buttons/used
#
# ボタンを使用した際の処理
#
# @within systems:tick/as_at

# reset
    scoreboard players reset @s UseCarrotStick

# reject
    execute unless entity @s[tag=Operator] run return fail
    
# start button
    execute if predicate assets:items/operator/buttons/start run function systems:operator/buttons/actions/start/

# setting button
    execute if predicate assets:items/operator/buttons/setting run function systems:operator/buttons/actions/setting