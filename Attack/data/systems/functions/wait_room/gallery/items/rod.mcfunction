#> systems:wait_room/gallery/items/rod
#
# Gallery内のRodをセットします
#
# @within systems:wait_room/gallery/properties/set_item_displays

# set
    loot spawn ~ ~ ~ loot assets:weapons/rods/basic_rod
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/properties/set_data
    loot spawn ~ ~ ~-1 loot assets:weapons/rods/elemental/air
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/properties/set_data
    loot spawn ~ ~ ~-2 loot assets:weapons/rods/elemental/dirt
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/properties/set_data
    loot spawn ~ ~ ~-3 loot assets:weapons/rods/elemental/fire
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/properties/set_data
    loot spawn ~ ~ ~-4 loot assets:weapons/rods/elemental/water
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/properties/set_data
    loot spawn ~ ~ ~-5 loot assets:weapons/rods/elemental/extend/air
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/properties/set_data
    loot spawn ~ ~ ~-6 loot assets:weapons/rods/elemental/extend/dirt
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/properties/set_data
    loot spawn ~ ~ ~-7 loot assets:weapons/rods/elemental/extend/fire
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/properties/set_data
    loot spawn ~ ~ ~-8 loot assets:weapons/rods/elemental/extend/water
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/properties/set_data
    loot spawn ~ ~ ~-9 loot assets:weapons/rods/crystal/air
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/properties/set_data
    loot spawn ~-1 ~1 ~ loot assets:weapons/rods/crystal/dirt
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/properties/set_data
    loot spawn ~-1 ~1 ~-1 loot assets:weapons/rods/crystal/fire
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/properties/set_data
    loot spawn ~-1 ~1 ~-2 loot assets:weapons/rods/crystal/water
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/properties/set_data
    loot spawn ~-1 ~1 ~-3 loot assets:weapons/rods/crystal/extend/air
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/properties/set_data
    loot spawn ~-1 ~1 ~-4 loot assets:weapons/rods/crystal/extend/dirt
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/properties/set_data
    loot spawn ~-1 ~1 ~-5 loot assets:weapons/rods/crystal/extend/fire
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/properties/set_data
    loot spawn ~-1 ~1 ~-6 loot assets:weapons/rods/crystal/extend/water
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/properties/set_data