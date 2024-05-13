#> systems:weapons/swords/ability/additional_damage/reset/aqua
# @within systems:weapons/swords/ability/additional_damage/aqua

# reset
    scoreboard players reset @s Counter
    scoreboard players reset @s AttackerID
    tag @s remove Player.Sword.Damaged.Aqua
    tag @p[tag=Player.Sword.Attacker.Aqua,limit=1] remove Player.Sword.Attacker.Aqua
