#> systems:weapons/magics/spells/detect_spells
# @handles systems:as_at

# detect
    execute if predicate libs:items/weapons/magics/spells/get_some_mana run function systems:weapons/magics/spells/effects/get_some_mana
    execute if predicate libs:items/weapons/magics/spells/get_some_mana_plus run function systems:weapons/magics/spells/effects/get_some_mana_plus
    execute if predicate libs:items/weapons/magics/spells/random_loot_chance run function systems:weapons/magics/spells/effects/random_loot_chance
    execute if predicate libs:items/weapons/magics/spells/chest_reload run function systems:weapons/magics/spells/effects/chest_reload
    execute if predicate libs:items/weapons/magics/spells/heal run function systems:weapons/magics/spells/effects/heal
    execute if predicate libs:items/weapons/magics/spells/heal_mp run function systems:weapons/magics/spells/effects/heal_mp
    execute if predicate libs:items/weapons/magics/spells/heal_plus run function systems:weapons/magics/spells/effects/heal_plus
    execute if predicate libs:items/weapons/magics/spells/heal_mp_plus run function systems:weapons/magics/spells/effects/heal_mp_plus
    execute if predicate libs:items/weapons/magics/spells/layer_mover run function systems:weapons/magics/spells/effects/layer_mover
    execute if predicate libs:items/weapons/magics/spells/wither_skeleton_remover run function systems:weapons/magics/spells/effects/wither_skeleton_remover
    execute if predicate libs:items/weapons/magics/spells/illumination run function systems:weapons/magics/spells/effects/illumination
    execute if predicate libs:items/weapons/magics/spells/debility run function systems:weapons/magics/spells/effects/debility
    execute if predicate libs:items/weapons/magics/spells/invincible run function systems:weapons/magics/spells/effects/invincible
    execute if predicate libs:items/weapons/magics/spells/rescues run function systems:weapons/magics/spells/effects/rescues
    execute if predicate libs:items/weapons/magics/spells/underground run function systems:weapons/magics/spells/effects/underground
    execute if predicate libs:items/weapons/magics/spells/mana_magnet run function systems:weapons/magics/spells/effects/mana_magnet
    execute if predicate libs:items/weapons/magics/spells/effect_restore run function systems:weapons/magics/spells/effects/effect_restore
    execute if predicate libs:items/weapons/magics/spells/mp_drain run function systems:weapons/magics/spells/effects/mp_drain
    execute if predicate libs:items/weapons/magics/spells/random_sword_chance run function systems:weapons/magics/spells/effects/random_sword_chance
    execute if predicate libs:items/weapons/magics/spells/random_rod_chance run function systems:weapons/magics/spells/effects/random_rod_chance
    execute if predicate libs:items/weapons/magics/spells/random_spell_chance run function systems:weapons/magics/spells/effects/random_spell_chance
    execute if predicate libs:items/weapons/magics/spells/random_book_chance run function systems:weapons/magics/spells/effects/random_book_chance

# reset
    scoreboard players reset $attack.using.mana temporary
    scoreboard players reset $attack.using.mana.count temporary
    scoreboard players reset $attack.weapons.magics.books.lackMp temporary
    scoreboard players reset $attack.using.mana.count counter

# mana count
    function systems:weapons/magics/spells/count_mana
