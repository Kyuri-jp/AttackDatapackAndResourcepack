#> systems:wait_room/gallery/rod
# @within systems:wait_room/gallery/set_item_displays

# set
    loot spawn ~ ~ ~ loot loots:weapons/rods/basic_rod
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/set_data
    loot spawn ~ ~ ~-1 loot loots:weapons/rods/elemental_rod_air
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/set_data
    loot spawn ~ ~ ~-2 loot loots:weapons/rods/elemental_rod_dirt
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/set_data
    loot spawn ~ ~ ~-3 loot loots:weapons/rods/elemental_rod_fire
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/set_data
    loot spawn ~ ~ ~-4 loot loots:weapons/rods/elemental_rod_water
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/set_data