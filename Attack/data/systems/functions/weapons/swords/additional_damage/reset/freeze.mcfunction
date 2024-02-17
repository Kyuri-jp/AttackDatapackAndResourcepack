#> systems:weapons/swords/additional_damage/reset/freeze
# @within systems:weapons/swords/additional_damage/freeze

# reset
    attribute @s generic.movement_speed base set 0.10000000149011612
    scoreboard players reset @s counter
    scoreboard players reset @s attackerID
    tag @s remove Player.Sword.Damaged.Freeze
    tag @p[distance=0.01..,tag=Player.Sword.Attacker.Freeze] remove Player.Sword.Attacker.Freeze
