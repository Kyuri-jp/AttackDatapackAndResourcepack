#> systems:weapons/swords/spider

#> Tag
# @within
#   systems:weapons/swords/spider
#   systems:weapons/swords/action/spider
    #declare tag Player.Sword.Attacker.Spider
    #declare tag Player.Sword.Damaged.Spider

# set tag
    tag @s add Player.Sword.Damaged.Spider
    execute on attacker run tag @s add Player.Sword.Attacker.Spider

# action
    effect give @s poison 2 0 false

# vfx
    particle spit ~ ~1 ~ 0 0 0 0.1 500
    playsound entity.spider.ambient player @s ~ ~ ~
    playsound entity.spider.hurt player @s ~ ~ ~

# actions
    execute as @p[tag=Player.Sword.Damaged.Spider] at @s run function systems:weapons/swords/action/spider

# revoke
    advancement revoke @s only assets:weapons/swords/spider

# remove tags
    tag @s remove Player.Sword.Damaged.Spider
    execute on attacker run tag @s remove Player.Sword.Attacker.Spider
