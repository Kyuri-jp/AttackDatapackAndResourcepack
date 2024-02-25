#> systems:weapons/magics/spells/detect_used
#
# 呪文の使用を検知します
#
# @handles systems:tick/as_at

# kill arrow
    kill @e[type=arrow,sort=nearest,limit=1]

# not enough charge
    execute unless score @s UseBow matches 20.. run loot give @s loot assets:weapons/spells/mana

# enough charge
    execute if score @s UseBow matches 20.. run function systems:weapons/magics/spells/detect_spells

# reset
    scoreboard players reset @s UseBow
