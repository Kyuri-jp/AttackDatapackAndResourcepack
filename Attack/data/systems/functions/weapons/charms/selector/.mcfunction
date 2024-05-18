#> systems:weapons/charms/selector/
#
# 使用しているチャームを特定します
#
# @within assets:weapons/charms/inv_change_of_charm

# revoke
    advancement revoke @s only assets:weapons/charms/inv_change_of_charm

# select
    execute if predicate assets:items/weapons/charms/adv_ref/head run function systems:weapons/charms/selector/head
    execute if predicate assets:items/weapons/charms/adv_ref/chest run function systems:weapons/charms/selector/chest
    execute if predicate assets:items/weapons/charms/adv_ref/legs run function systems:weapons/charms/selector/legs
    execute if predicate assets:items/weapons/charms/adv_ref/feet run function systems:weapons/charms/selector/feet