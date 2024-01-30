# get using mana
    execute unless score $attack.using.mana.count temporary matches 1.. run scoreboard players operation $attack.using.mana.count counter = $attack.using.mana temporary
    execute unless score $attack.using.mana.count counter matches 1.. run scoreboard players remove $attack.using.mana.count temporary 1
    execute unless score $attack.using.mana.count counter matches 1.. run scoreboard players operation $attack.using.mana.count counter = $attack.using.mana.count temporary

# reset
    scoreboard players reset $attack.using.mana.count temporary

# remove
    clear @s arrow{Mana:true} 1

# remove count
    scoreboard players remove $attack.using.mana.count counter 1

# return
    execute if score $attack.using.mana.count counter matches ..0 run return 0

# recall
    function systems:weapons/magics/spells/consume_mana
