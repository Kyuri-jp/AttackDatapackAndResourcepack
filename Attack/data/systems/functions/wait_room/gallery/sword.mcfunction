#> systems:wait_room/gallery/sword
# @within systems:wait_room/gallery/set_item_displays

# set
    loot spawn ~ ~ ~ loot assets:weapons/swords/flame
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/set_data
    loot spawn ~ ~ ~-1 loot assets:weapons/swords/frost
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/set_data
    loot spawn ~ ~ ~-2 loot assets:weapons/swords/poison
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/set_data
    loot spawn ~ ~ ~-3 loot assets:weapons/swords/optical
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/set_data
    loot spawn ~ ~ ~-4 loot assets:weapons/swords/plateau
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/set_data
    loot spawn ~ ~ ~-5 loot assets:weapons/swords/aqua
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/set_data
    loot spawn ~ ~ ~-6 loot assets:weapons/swords/wind
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/set_data
    loot spawn ~ ~ ~-7 loot assets:weapons/swords/gravity
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/set_data
    loot spawn ~ ~ ~-8 loot assets:weapons/swords/freeze
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/set_data
    loot spawn ~ ~ ~-9 loot assets:weapons/swords/eternal
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/set_data
    loot spawn ~-1 ~1 ~ loot assets:weapons/swords/spider
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/set_data
    loot spawn ~-1 ~1 ~-1 loot assets:weapons/swords/magnet
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/set_data
    loot spawn ~-1 ~1 ~-2 loot assets:weapons/swords/photon
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/set_data
    loot spawn ~-1 ~1 ~-3 loot assets:weapons/swords/wither
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/set_data
    loot spawn ~-1 ~1 ~-4 loot assets:weapons/swords/end
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/set_data
