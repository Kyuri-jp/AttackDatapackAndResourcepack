#> systems:weapons/swords/ability/additional_damage/freeze
# @within
#   systems:weapons/swords/ability/freeze
#   systems:weapons/swords/ability/additional_damage/freeze

#> Tag
# @within
#   systems:weapons/swords/ability/additional_damage/freeze
#   systems:weapons/swords/ability/additional_damage/reset/freeze
#   systems:weapons/swords/ability/additional_damage/reset/tag_remover
    #declare tag Player.Sword.Attacker.Freeze

# attacker detect
    execute as @a if score @s PlayerID = @a[tag=Player.Sword.Damaged.Freeze,limit=1] AttackerID run tag @s add Player.Sword.Attacker.Freeze

# set attribute
    attribute @s generic.movement_speed base set 0

# damage
    execute as @a[tag=Player.Sword.Damaged.Freeze] at @s run damage @s 1 assets:weapons/swords/freeze by @p[tag=Player.Sword.Attacker.Freeze,distance=0.01..]

# add count
    scoreboard players add @a[tag=Player.Sword.Damaged.Freeze] Counter 1

# recall
    execute as @a[tag=Player.Sword.Damaged.Freeze,limit=1] unless score @s Counter matches 3.. run schedule function systems:weapons/swords/ability/additional_damage/freeze 1t

# reset
    execute as @a[tag=Player.Sword.Damaged.Freeze,limit=1] if score @s Counter matches 3.. run function systems:weapons/swords/ability/additional_damage/reset/freeze
