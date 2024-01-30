# detect
    execute if predicate libs:items/weapons/magics/spells/get_some_mana run function systems:weapons/magics/spells/effects/get_some_mana
    execute if predicate libs:items/weapons/magics/spells/random_loot_chance run function systems:weapons/magics/spells/effects/random_loot_chance
    execute if predicate libs:items/weapons/magics/spells/chest_reload run function systems:weapons/magics/spells/effects/chest_reload
    execute if predicate libs:items/weapons/magics/spells/heal run function systems:weapons/magics/spells/effects/heal
    execute if predicate libs:items/weapons/magics/spells/heal_mp run function systems:weapons/magics/spells/effects/heal_mp
    execute if predicate libs:items/weapons/magics/spells/heal_plus run function systems:weapons/magics/spells/effects/heal_plus
    execute if predicate libs:items/weapons/magics/spells/heal_mp_plus run function systems:weapons/magics/spells/effects/heal_mp_plus
    execute if predicate libs:items/weapons/magics/spells/layer_mover run function systems:weapons/magics/spells/effects/layer_mover

# reset
    scoreboard players reset $attack.using.mana temporary

# mana count
    function systems:weapons/magics/spells/count_mana
