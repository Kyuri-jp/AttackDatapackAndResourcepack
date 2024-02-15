#> systems:weapons/swords/additional_damage/freeze
# @within systems:weapons/swords/freeze

# attacker detect
    execute as @a if score @s playerID = @a[tag=weapons.swords.damage.additional_damage.freeze,limit=1] attackerID run tag @s add weapons.swords.attacker.freeze

# set attribute
    attribute @s generic.movement_speed base set 0

# damage
    execute as @a[tag=weapons.swords.damage.additional_damage.freeze] at @s run damage @s 0.1 libs:freeze by @p[distance=0.01..,tag=weapons.swords.attacker.freeze]

# add count
    scoreboard players add @a[tag=weapons.swords.damage.additional_damage.freeze] counter 1

# recall
    execute as @a[tag=weapons.swords.damage.additional_damage.freeze,limit=1] unless score @s counter matches 3.. run schedule function systems:weapons/swords/additional_damage/freeze 1t

# reset
    execute as @a[tag=weapons.swords.damage.additional_damage.freeze,limit=1] if score @s counter matches 3.. run function systems:weapons/swords/additional_damage/reset/freeze
