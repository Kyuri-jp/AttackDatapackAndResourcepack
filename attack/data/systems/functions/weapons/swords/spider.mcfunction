# set tag
    tag @s add attack.weapons.swords.spider.vehicle
    execute on attacker run tag @s add attack.weapons.swords.spider.attacker

# action
    effect give @s poison 2 0 false

# vfx
    particle minecraft:spit ~ ~1 ~ 0 0 0 0.1 500
    playsound minecraft:entity.spider.ambient player @s ~ ~ ~

# actions
    execute as @p[attack.weapons.swords.spider.vehicle] at @s run function systems:weapons/swords/action/spider

# revoke
    advancement revoke @s only libs:weapons/swords/spider

# remove tags
    tag @s remove attack.weapons.swords.spider.vehicle
    execute on attacker run tag @s remove attack.weapons.swords.spider.attacker
