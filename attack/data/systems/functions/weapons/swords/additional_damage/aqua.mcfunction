execute as @a[tag=weapons.swords.damage.additional_damage.aqua] at @s run damage @s 0.2 player_attack by @p[distance=0.01..,sort=nearest]
execute as @a[tag=weapons.swords.damage.additional_damage.aqua] at @s run particle minecraft:falling_water ~ ~1 ~ 0 0 0 0.1 500
execute as @a[tag=weapons.swords.damage.additional_damage.aqua] at @s run playsound minecraft:block.grass.break player @s ~ ~ ~
scoreboard players add @a[tag=weapons.swords.damage.additional_damage.aqua] counter 1
execute as @a[tag=weapons.swords.damage.additional_damage.aqua,limit=1] unless score @s counter matches 3.. run schedule function systems:weapons/swords/additional_damage/aqua 10t
execute as @a[tag=weapons.swords.damage.additional_damage.aqua,limit=1] if score @s counter matches 3.. run function systems:weapons/swords/additional_damage/reset/aqua