#> systems:weapons/magics/spells/consume_mana
# @within systems:weapons/magics/spells/effects/common/finish

# get using mana
    execute unless score $using.mana.count temporary matches 1.. run scoreboard players operation $using.mana.count temporary = $using.mana temporary
    execute unless score $using.mana.count counter matches 1.. run scoreboard players remove $using.mana.count temporary 1
    execute unless score $using.mana.count counter matches 1.. run scoreboard players operation $using.mana.count counter = $using.mana.count temporary

# remove
    clear @s arrow{Mana:true} 1

# remove count
    scoreboard players remove $using.mana.count counter 1

# return
    execute if score $using.mana.count counter matches ..0 run return 0

# recall
    function systems:weapons/magics/spells/consume_mana
