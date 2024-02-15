#> systems:weapons/swords/action/spider
# @within systems:weapons/swords/spider

# have any items in offhand
    execute as @p[tag=attack.weapons.swords.spider.attacker,limit=1] unless predicate libs:dont_have_any_items_of_off_hand run return 0

# vfx
    execute if predicate libs:dont_have_any_items run particle spit ~ ~1 ~ 0 0 0 0.1 200

# set item
    execute unless predicate libs:dont_have_any_items run item replace entity @s weapon.offhand from entity @p[tag=attack.weapons.swords.spider.attacker,limit=1] weapon.mainhand
    execute unless predicate libs:dont_have_any_items run item replace entity @s weapon.mainhand with air
