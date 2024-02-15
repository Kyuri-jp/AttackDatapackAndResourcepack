#> systems:weapons/magics/spells/count_using_time
# @within advancement libs:count/items/using_bow

# add count
    scoreboard players add @s useBow 1

# revoke    
    advancement revoke @s only libs:count/items/using_bow

# count mana
    function systems:weapons/magics/spells/count_mana
