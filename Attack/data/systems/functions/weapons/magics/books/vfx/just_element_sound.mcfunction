#> systems:weapons/magics/books/vfx/just_element_sound
# @within systems:weapons/magics/books/actions/

#air
    execute if score $attack.magics.rods.elements.just datas matches 1 run playsound block.beacon.activate player @s ~ ~ ~
#dirt
    execute if score $attack.magics.rods.elements.just datas matches 2 run playsound block.stone.break player @s ~ ~ ~ 5
#fire
    execute if score $attack.magics.rods.elements.just datas matches 3 run playsound entity.blaze.shoot player @s ~ ~ ~
#water
    execute if score $attack.magics.rods.elements.just datas matches 4 run playsound entity.player.splash player @s ~ ~ ~ 5