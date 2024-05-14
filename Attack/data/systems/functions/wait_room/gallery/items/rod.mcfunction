#> systems:wait_room/gallery/items/rod
#
# Gallery内のRodをセットします
#
# @within systems:wait_room/gallery/properties/set_item_displays

# set
    loot spawn ~ ~ ~ loot assets:weapons/rods/basic_rod
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/properties/set_data
    loot spawn ~ ~ ~-1 loot assets:weapons/rods/elemental/elemental_rod_air
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/properties/set_data
    loot spawn ~ ~ ~-2 loot assets:weapons/rods/elemental/elemental_rod_dirt
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/properties/set_data
    loot spawn ~ ~ ~-3 loot assets:weapons/rods/elemental/elemental_rod_fire
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/properties/set_data
    loot spawn ~ ~ ~-4 loot assets:weapons/rods/elemental/elemental_rod_water
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/properties/set_data