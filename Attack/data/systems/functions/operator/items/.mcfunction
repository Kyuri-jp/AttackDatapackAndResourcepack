#> systems:operator/items/
#
# ボタンを再配置します
#
# @within systems:tick/as_at

#> Operator
# @within
#   systems:operator/items/
#   systems:operator/buttons/used
    #declare tag Operator

#> Have Holder
# @private
    #declare score_holder #Operator.Item.Have.Start
    #declare score_holder #Operator.Item.Have.Setting

# reject
    execute unless entity @s[tag=Operator] run clear @s carrot_on_a_stick{ButtonTag:Start}
    execute unless entity @s[tag=Operator] run clear @s carrot_on_a_stick{ButtonTag:Setting}
    execute unless entity @s[tag=Operator] run return fail
    execute if data storage attack:booleans {Main:{Game:{Playing:1b}}} run return fail

# reset
    scoreboard players set #Operator.Item.Have.Start Temporary 0
    scoreboard players set #Operator.Item.Have.Setting Temporary 0

# set
    execute store success score #Operator.Item.Have.Start Temporary run clear @s carrot_on_a_stick{ButtonTag:Start} 0
    execute store success score #Operator.Item.Have.Setting Temporary run clear @s carrot_on_a_stick{ButtonTag:Setting} 0

    execute unless score #Operator.Item.Have.Start Temporary matches 1.. run loot give @s loot assets:operator/start
    execute unless score #Operator.Item.Have.Setting Temporary matches 1.. run loot give @s loot assets:operator/setting
