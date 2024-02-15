# give
    loot give @s loot loots:weapons/spells/mana

# remove count
    scoreboard players remove $attack.magics.spells.manaMagnet.count temporary 1

# return
    execute if score $attack.magics.spells.manaMagnet.count temporary matches ..0 run return 0

# recall
    function systems:weapons/magics/spells/effects/actions/get_mana