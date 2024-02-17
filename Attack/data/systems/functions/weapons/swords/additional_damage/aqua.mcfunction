#> systems:weapons/swords/additional_damage/aqua
# @within systems:weapons/swords/aqua

# attacker detect
    execute as @a if score @s playerID = @a[tag=weapons.swords.damage.additional_damage.aqua,limit=1] attackerID run tag @s add weapons.swords.attacker.aqua

# damage and vfx
    execute as @a[tag=weapons.swords.damage.additional_damage.aqua] at @s run damage @s 0.2 libs:weapons/swords/aqua by @p[distance=0.01..,tag=weapons.swords.attacker.aqua]
    execute as @a[tag=weapons.swords.damage.additional_damage.aqua] at @s run particle minecraft:falling_water ~ ~1 ~ 0 0 0 0.1 500
    execute as @a[tag=weapons.swords.damage.additional_damage.aqua] at @s run playsound minecraft:entity.player.splash player @s ~ ~ ~

# remove tag
    tag @p[tag=weapons.swords.attacker.aqua,limit=1] remove weapons.swords.attacker.aqua

# add counter
    scoreboard players add @a[tag=weapons.swords.damage.additional_damage.aqua] counter 1

# recall
    execute as @a[tag=weapons.swords.damage.additional_damage.aqua,limit=1] unless score @s counter matches 3.. run schedule function systems:weapons/swords/additional_damage/aqua 1t

# reset
    execute as @a[tag=weapons.swords.damage.additional_damage.aqua,limit=1] if score @s counter matches 3.. run function systems:weapons/swords/additional_damage/reset/aqua
