#> systems:weapons/magics/spells/consume_mana
# @within systems:weapons/magics/spells/effects/common/finish

# get using mana
    execute unless score #Magic.Mana.Count temporary matches 1.. run scoreboard players operation #Magic.Mana.Count temporary = #Magic.Using.Mana temporary
    execute unless score #Magic.Mana.Count counter matches 1.. run scoreboard players remove #Magic.Mana.Count temporary 1
    execute unless score #Magic.Mana.Count counter matches 1.. run scoreboard players operation #Magic.Mana.Count counter = #Magic.Mana.Count temporary

# remove
    clear @s arrow{Mana:true} 1

# remove count
    scoreboard players remove #Magic.Mana.Count counter 1

# return
    execute if score #Magic.Mana.Count counter matches ..0 run return 0

# recall
    function systems:weapons/magics/spells/consume_mana
