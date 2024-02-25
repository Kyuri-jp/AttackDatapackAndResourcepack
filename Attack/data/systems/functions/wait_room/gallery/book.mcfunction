#> systems:wait_room/gallery/book
#
# Gallery内のBookをセットします
#
# @within systems:wait_room/gallery/set_item_displays

# set
    loot spawn ~ ~ ~ loot assets:weapons/books/dark
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/set_data
    loot spawn ~ ~ ~-1 loot assets:weapons/books/drain
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/set_data
    loot spawn ~ ~ ~-2 loot assets:weapons/books/explosion
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/set_data
    loot spawn ~ ~ ~-3 loot assets:weapons/books/flash
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/set_data
    loot spawn ~ ~ ~-4 loot assets:weapons/books/lightning
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/set_data
    loot spawn ~ ~ ~-5 loot assets:weapons/books/meteor
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/set_data
    loot spawn ~ ~ ~-6 loot assets:weapons/books/water_chain
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/set_data
    loot spawn ~ ~ ~-7 loot assets:weapons/books/reel
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/set_data
    loot spawn ~ ~ ~-8 loot assets:weapons/books/poison_drink
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/set_data
    loot spawn ~ ~ ~-8 loot assets:weapons/books/inferno
    execute positioned as @e[type=item,sort=nearest,limit=1] run function systems:wait_room/gallery/set_data