#> systems:wait_room/gallery/set_item_displays
#
# Galleryをセットします
#
# @within core:installed/set_displays

# set
    execute positioned -95.9 -24.5 32.5 run function systems:wait_room/gallery/sword
    execute positioned -95.9 -24.5 32.5 positioned ~ ~ ~-11 run function systems:wait_room/gallery/rod
    execute positioned -95.9 -24.5 32.5 positioned ~ ~ ~-24 run function systems:wait_room/gallery/book
    execute positioned -95.9 -24.5 32.5 positioned ~ ~ ~-35 run function systems:wait_room/gallery/spell

# set rotation
    execute as @e[type=item_display,tag=Entity.Display.Item.Gallery] run data modify entity @s Rotation set value [-90.0f,0f]
    function systems:wait_room/gallery/set_size_and_rotation
