#> systems:weapons/magics/books/common/mp
# @within systems:weapons/magics/books/common/

# mp
    ## lack mp
        execute unless score $counter.magics.rods.scope counter matches 1.. unless score @a[tag=weapons.magics.rods.user,sort=nearest,limit=1] mp >= $using.mp temporary run tellraw @a[tag=weapons.magics.rods.user,sort=nearest,limit=1] {"interpret":true,"nbt":"Main.Weapons.Lack.Mp","storage":"storage:messages"}
        execute unless score $counter.magics.rods.scope counter matches 1.. unless score @a[tag=weapons.magics.rods.user,sort=nearest,limit=1] mp >= $using.mp temporary run kill @s
        execute unless score $counter.magics.rods.scope counter matches 1.. unless score @a[tag=weapons.magics.rods.user,sort=nearest,limit=1] mp >= $using.mp temporary run return 1
    ## enough mp
        execute unless score $counter.magics.rods.scope counter matches 1.. if score @a[tag=weapons.magics.rods.user,sort=nearest,limit=1] mp >= $using.mp temporary run scoreboard players operation @a[tag=weapons.magics.rods.user,sort=nearest,limit=1] mp -= $using.mp temporary
        #just
        execute unless score $counter.magics.rods.scope counter matches 1.. if score @a[tag=weapons.magics.rods.user,sort=nearest,limit=1] mp >= $using.mp temporary if score $weapons.magics.rods.elements datas = $magics.rods.elements.just datas as @a[tag=weapons.magics.rods.user,sort=nearest,limit=1] at @s run function systems:weapons/magics/books/vfx/just_element_sound
