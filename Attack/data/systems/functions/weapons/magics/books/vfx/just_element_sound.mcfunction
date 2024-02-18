#> systems:weapons/magics/books/vfx/just_element_sound
# @within systems:weapons/magics/books/common/mp

#air
    execute if score #Magic.Rod.Element.Just datas matches 1 run playsound entity.player.attack.sweep player @s ~ ~ ~
#dirt
    execute if score #Magic.Rod.Element.Just datas matches 2 run playsound block.stone.break player @s ~ ~ ~ 5
#fire
    execute if score #Magic.Rod.Element.Just datas matches 3 run playsound entity.blaze.shoot player @s ~ ~ ~
#water
    execute if score #Magic.Rod.Element.Just datas matches 4 run playsound entity.player.splash player @s ~ ~ ~ 5