attribute @s generic.movement_speed base set 0
execute as @a[tag=weapons.swords.damage.additional_damage.freeze] at @s run damage @s 0.1 player_attack by @p[distance=0.01..,sort=nearest]
scoreboard players add @a[tag=weapons.swords.damage.additional_damage.freeze] counter 1
execute as @a[tag=weapons.swords.damage.additional_damage.freeze,limit=1] unless score @s counter matches 3.. run schedule function systems:weapons/swords/additional_damage/freeze 10t
execute as @a[tag=weapons.swords.damage.additional_damage.freeze,limit=1] if score @s counter matches 3.. run function systems:weapons/swords/additional_damage/reset/freeze