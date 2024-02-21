#> systems:weapons/magics/spells/count_using_time
# @within advancement assets:count/items/using_bow

# add count
    scoreboard players add @s UseBow 1

# revoke    
    advancement revoke @s only assets:count/items/using_bow

# count mana
    function systems:weapons/magics/spells/count_mana
