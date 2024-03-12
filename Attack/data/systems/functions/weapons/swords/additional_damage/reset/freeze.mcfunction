#> systems:weapons/swords/additional_damage/reset/freeze
# @within systems:weapons/swords/additional_damage/freeze

# reset
    attribute @s generic.movement_speed base set 0.1
    scoreboard players reset @s Counter
    scoreboard players reset @s AttackerID
    tag @s remove Player.Sword.Damaged.Freeze
    tag @p[tag=Player.Sword.Attacker.Freeze,limit=1] remove Player.Sword.Attacker.Freeze
