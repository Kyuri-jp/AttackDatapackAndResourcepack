execute as @p[tag=attack.weapons.swords.spider.attacker,limit=1] unless predicate api:dont_have_any_items_of_off_hand run return 0

execute if predicate api:dont_have_any_items run particle spit ~ ~1 ~ 0 0 0 0.1 200
execute unless predicate api:dont_have_any_items run item replace entity @s weapon.offhand from entity @p[tag=attack.weapons.swords.spider.attacker,limit=1] weapon.mainhand
execute unless predicate api:dont_have_any_items run item replace entity @s weapon.mainhand with air