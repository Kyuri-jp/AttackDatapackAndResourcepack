# give
    loot give @s loot assets:weapons/spells/mana

# remove count
    scoreboard players remove $Magic.Spell.ManaMagnet.Count Temporary 1

# return
    execute if score $Magic.Spell.ManaMagnet.Count Temporary matches ..0 run return 0

# recall
    function systems:weapons/magics/spells/effects/actions/get_mana