#> systems:weapons/swords/action/spider
#
# プレイヤーのアイテムを手に入れます
#
# @within systems:weapons/swords/spider

# have any items in offhand
    execute as @p[tag=Player.Sword.Attacker.Spider,limit=1] unless predicate assets:dont_have_any_items_of_off_hand run return fail

# vfx
    execute if predicate assets:dont_have_any_items run particle spit ~ ~1 ~ 0 0 0 0.1 200

# set item
    execute unless predicate assets:dont_have_any_items run item replace entity @p[tag=Player.Sword.Attacker.Spider,limit=1] weapon.offhand from entity @s weapon.mainhand
    execute unless predicate assets:dont_have_any_items run item replace entity @s weapon.mainhand with air
