#> systems:weapons/magics/spells/detect_used
# @handles systems:as_at

# kill arrow
    kill @e[type=arrow,sort=nearest,limit=1]

# not enough charge
    execute unless score @s useBow matches 20.. run loot give @s loot loots:weapons/spells/mana

# enough charge
    execute if score @s useBow matches 20.. run function systems:weapons/magics/spells/detect_spells

# reset
    scoreboard players reset @s useBow
