#> systems:weapons/magics/books/vfx/just_element_particle
# @within systems:weapons/magics/books/common/move

#air
    execute if predicate assets:items/weapons/magics/rods/just/air run particle sweep_attack ~ ~ ~ 0.2 0.2 0.2 0.1 5
    execute if predicate assets:items/weapons/magics/rods/just/air run particle dust 0.004 0.686 0.82 1 ~ ~ ~ 0.2 0.2 0.2 0.1 10

#dirt
    execute if predicate assets:items/weapons/magics/rods/just/dirt run particle block dirt ~ ~ ~ 0.2 0.2 0.2 0.1 10
    execute if predicate assets:items/weapons/magics/rods/just/dirt run particle dust 0.369 0.427 0 1 ~ ~ ~ 0.2 0.2 0.2 0.1 10

#fire
    execute if predicate assets:items/weapons/magics/rods/just/fire run particle flame ~ ~ ~ 0.2 0.2 0.2 0.1 5
    execute if predicate assets:items/weapons/magics/rods/just/fire run particle dust 0.698 0.016 0.016 1 ~ ~ ~ 0.2 0.2 0.2 0.1 10

#water
    execute if predicate assets:items/weapons/magics/rods/just/water run particle falling_water ~ ~ ~ 0.2 0.2 0.2 0.1 10
    execute if predicate assets:items/weapons/magics/rods/just/water run particle dust 0.2 0.212 0.78 1 ~ ~ ~ 0.2 0.2 0.2 0.1 10
