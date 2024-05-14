#> systems:weapons/magics/books/vfx/just_element_sound
# @within systems:weapons/magics/books/common/mp

#air
    execute if predicate assets:items/weapons/magics/rods/just/air run playsound entity.player.attack.sweep player @s ~ ~ ~

#dirt
    execute if predicate assets:items/weapons/magics/rods/just/dirt run playsound block.stone.break player @s ~ ~ ~ 5

#fire
    execute if predicate assets:items/weapons/magics/rods/just/fire run playsound entity.blaze.shoot player @s ~ ~ ~

#water
    execute if predicate assets:items/weapons/magics/rods/just/water run playsound entity.player.splash player @s ~ ~ ~ 5