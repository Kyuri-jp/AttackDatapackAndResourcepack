# give
    loot give @s loot assets:weapons/spells/mana

# remove count
    scoreboard players remove $magics.spells.manaMagnet.count temporary 1

# return
    execute if score $magics.spells.manaMagnet.count temporary matches ..0 run return 0

# recall
    function systems:weapons/magics/spells/effects/actions/get_mana