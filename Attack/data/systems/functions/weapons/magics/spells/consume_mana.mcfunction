#> systems:weapons/magics/spells/consume_mana
# @within
#   systems:weapons/magics/spells/effects/common/finish
#   systems:weapons/magics/spells/consume_mana

# get using mana
    execute unless score #Magic.Mana.Count Temporary matches 1.. run scoreboard players operation #Magic.Mana.Count Temporary = #Magic.Using.Mana Temporary
    execute unless score #Magic.Mana.Count Counter matches 1.. run scoreboard players remove #Magic.Mana.Count Temporary 1
    execute unless score #Magic.Mana.Count Counter matches 1.. run scoreboard players operation #Magic.Mana.Count Counter = #Magic.Mana.Count Temporary

# remove
    clear @s arrow{Mana:true} 1

# remove count
    scoreboard players remove #Magic.Mana.Count Counter 1

# return
    execute if score #Magic.Mana.Count Counter matches ..0 run return 0

# recall
    function systems:weapons/magics/spells/consume_mana
