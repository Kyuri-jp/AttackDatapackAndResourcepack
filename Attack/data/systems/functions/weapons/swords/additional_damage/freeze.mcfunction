#> systems:weapons/swords/additional_damage/freeze
# @within systems:weapons/swords/freeze

#> tag
# @within
#   systems:weapons/swords/additional_damage/freeze
#   systems:weapons/swords/additional_damage/reset/freeze
    #declare tag Player.Sword.Attacker.Freeze
# attacker detect
    execute as @a if score @s playerID = @a[tag=Player.Sword.Damaged.Freeze,limit=1] attackerID run tag @s add Player.Sword.Attacker.Freeze

# set attribute
    attribute @s generic.movement_speed base set 0

# damage
    execute as @a[tag=Player.Sword.Damaged.Freeze] at @s run damage @s 0.1 assets:weapons/swords/freeze by @p[distance=0.01..,tag=Player.Sword.Attacker.Freeze]

# add count
    scoreboard players add @a[tag=Player.Sword.Damaged.Freeze] counter 1

# recall
    execute as @a[tag=Player.Sword.Damaged.Freeze,limit=1] unless score @s counter matches 3.. run schedule function systems:weapons/swords/additional_damage/freeze 1t

# reset
    execute as @a[tag=Player.Sword.Damaged.Freeze,limit=1] if score @s counter matches 3.. run function systems:weapons/swords/additional_damage/reset/freeze
