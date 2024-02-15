#> systems:wait_room/gallery/set_size_and_rotation
# @within systems:wait_room/gallery/set_item_displays

# rod
    execute as @e[type=item_display,tag=display.item.gallery] if data entity @s {item:{tag:{Rod:true}}} run data modify entity @s transformation.scale set value [0.5f,0.5f,0.5f]
    execute as @e[type=item_display,tag=display.item.gallery] if data entity @s {item:{tag:{Rod:true}}} run data modify entity @s transformation.right_rotation set value [0.0f,0.0f,-0.5f,1.0f]
    execute as @e[type=item_display,tag=display.item.gallery] if data entity @s {item:{tag:{Rod:true}}} run data modify entity @s transformation.translation set value [0.0f,0.5f,-0.1f]

# book
    execute as @e[type=item_display,tag=display.item.gallery] if data entity @s {item:{tag:{MagicBook:true}}} run data modify entity @s transformation.scale set value [0.2f,0.2f,0.2f]
    execute as @e[type=item_display,tag=display.item.gallery] if data entity @s {item:{tag:{MagicBook:true}}} run data modify entity @s transformation.right_rotation set value [1.0f,1.0f,1.0f,1.0f]
    execute as @e[type=item_display,tag=display.item.gallery] if data entity @s {item:{tag:{MagicBook:true}}} run data modify entity @s transformation.translation set value [0.0f,0.0f,0.23f]

# spell
    execute as @e[type=item_display,tag=display.item.gallery] if data entity @s {item:{tag:{Spell:true}}} run data modify entity @s transformation.scale set value [0.3f,0.3f,0.3f]
    execute as @e[type=item_display,tag=display.item.gallery] if data entity @s {item:{tag:{Spell:true}}} run data modify entity @s transformation.right_rotation set value [0f,1.8f,0f,0.01f]
    execute as @e[type=item_display,tag=display.item.gallery] if data entity @s {item:{tag:{Spell:true}}} run data modify entity @s transformation.translation set value [0f,0f,0.2f]

