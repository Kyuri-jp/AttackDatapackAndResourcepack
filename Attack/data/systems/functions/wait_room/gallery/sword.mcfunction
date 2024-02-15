#> systems:wait_room/gallery/sword
# @within systems:wait_room/gallery/set_item_displays

# set
    loot spawn ~ ~ ~ loot loots:weapons/swords/flame
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/set_data
    loot spawn ~ ~ ~-1 loot loots:weapons/swords/frost
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/set_data
    loot spawn ~ ~ ~-2 loot loots:weapons/swords/poison
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/set_data
    loot spawn ~ ~ ~-3 loot loots:weapons/swords/optical
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/set_data
    loot spawn ~ ~ ~-4 loot loots:weapons/swords/plateau
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/set_data
    loot spawn ~ ~ ~-5 loot loots:weapons/swords/aqua
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/set_data
    loot spawn ~ ~ ~-6 loot loots:weapons/swords/wind
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/set_data
    loot spawn ~ ~ ~-7 loot loots:weapons/swords/gravity
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/set_data
    loot spawn ~ ~ ~-8 loot loots:weapons/swords/freeze
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/set_data
    loot spawn ~ ~ ~-9 loot loots:weapons/swords/eternal
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/set_data
    loot spawn ~-1 ~1 ~ loot loots:weapons/swords/spider
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/set_data
    loot spawn ~-1 ~1 ~-1 loot loots:weapons/swords/magnet
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/set_data
    loot spawn ~-1 ~1 ~-2 loot loots:weapons/swords/photon
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/set_data
    loot spawn ~-1 ~1 ~-3 loot loots:weapons/swords/wither
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/set_data
    loot spawn ~-1 ~1 ~-4 loot loots:weapons/swords/end
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/set_data
