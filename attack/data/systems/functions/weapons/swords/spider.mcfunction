tag @s add attack.weapons.swords.spider.vehicle
execute on attacker run tag @s add attack.weapons.swords.spider.attacker

effect give @s poison 2 0 false
particle minecraft:spit ~ ~1 ~ 0 0 0 0.1 500
playsound minecraft:entity.spider.ambient player @s ~ ~ ~
execute as @p[attack.weapons.swords.spider.vehicle] at @s run function systems:weapons/swords/action/spider
advancement revoke @s only api:weapons/swords/spider

tag @s remove attack.weapons.swords.spider.vehicle
execute on attacker run tag @s remove attack.weapons.swords.spider.attacker