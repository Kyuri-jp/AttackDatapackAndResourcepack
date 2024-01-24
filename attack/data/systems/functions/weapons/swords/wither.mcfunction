effect give @s wither 3 0 false
execute as @s[team=redTeam] at @s summon wither_skeleton run team join blueTeam @s
execute as @s[team=blueTeam] at @s summon wither_skeleton run team join redTeam @s
particle minecraft:dust 0 0 0 1 ~ ~1 ~ 0 0 0 0.1 500
playsound minecraft:entity.spider.ambient player @s ~ ~ ~
advancement revoke @s only libs:weapons/swords/wither