#> systems:wait_room/gallery/spell
# @within systems:wait_room/gallery/set_item_displays

# set
    loot spawn ~ ~ ~ loot loots:weapons/spells/chest_reload
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/set_data
    loot spawn ~ ~ ~-1 loot loots:weapons/spells/get_some_mana
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/set_data
    loot spawn ~ ~ ~-2 loot loots:weapons/spells/get_some_mana_plus
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/set_data
    loot spawn ~ ~ ~-3 loot loots:weapons/spells/heal
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/set_data
    loot spawn ~ ~ ~-4 loot loots:weapons/spells/heal_plus
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/set_data
    loot spawn ~ ~ ~-5 loot loots:weapons/spells/heal_mp
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/set_data
    loot spawn ~ ~ ~-6 loot loots:weapons/spells/heal_mp_plus
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/set_data
    loot spawn ~ ~ ~-7 loot loots:weapons/spells/layer_mover
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/set_data
    loot spawn ~ ~ ~-8 loot loots:weapons/spells/random_loot_chance
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/set_data
    loot spawn ~ ~ ~-9 loot loots:weapons/spells/wither_skeleton_remover
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/set_data
    loot spawn ~-1 ~1 ~ loot loots:weapons/spells/illumination
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/set_data
    loot spawn ~-1 ~1 ~-1 loot loots:weapons/spells/debility
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/set_data
    loot spawn ~-1 ~1 ~-2 loot loots:weapons/spells/invincible
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/set_data
    loot spawn ~-1 ~1 ~-3 loot loots:weapons/spells/rescues
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/set_data
    loot spawn ~-1 ~1 ~-4 loot loots:weapons/spells/underground
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/set_data
    loot spawn ~-1 ~1 ~-5 loot loots:weapons/spells/mana_magnet
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/set_data
    loot spawn ~-1 ~1 ~-6 loot loots:weapons/spells/effect_restore
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/set_data
    loot spawn ~-1 ~1 ~-7 loot loots:weapons/spells/mp_drain
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/set_data
    loot spawn ~-1 ~1 ~-8 loot loots:weapons/spells/random_sword_chance
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/set_data
    loot spawn ~-1 ~1 ~-9 loot loots:weapons/spells/random_rod_chance
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/set_data
    loot spawn ~-2 ~2 ~ loot loots:weapons/spells/random_spell_chance
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/set_data
    loot spawn ~-2 ~2 ~-1 loot loots:weapons/spells/random_book_chance
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/set_data
