#> systems:weapons/swords/additional_damage/reset/freeze
# @within systems:weapons/swords/additional_damage/freeze

# reset
    attribute @s generic.movement_speed base set 0.10000000149011612
    scoreboard players reset @s Counter
    scoreboard players reset @s AttackerID
    tag @s remove Player.Sword.Damaged.Freeze
    tag @p[tag=Player.Sword.Attacker.Freeze,distance=0.01..] remove Player.Sword.Attacker.Freeze
