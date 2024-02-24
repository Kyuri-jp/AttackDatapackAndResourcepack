#> systems:weapons/magics/books/vfx/just_element_particle
# @within systems:weapons/magics/books/common/move

#air
    execute if score #Magic.Rod.Element.Just Datas matches 1 run particle sweep_attack ~ ~ ~ 0.2 0.2 0.2 0.1 5
    execute if score #Magic.Rod.Element.Just Datas matches 1 run particle dust 0.004 0.686 0.82 1 ~ ~ ~ 0.2 0.2 0.2 0.1 10

#dirt
    execute if score #Magic.Rod.Element.Just Datas matches 2 run particle block dirt ~ ~ ~ 0.2 0.2 0.2 0.1 10
    execute if score #Magic.Rod.Element.Just Datas matches 2 run particle dust 0.369 0.427 0 1 ~ ~ ~ 0.2 0.2 0.2 0.1 10

#fire
    execute if score #Magic.Rod.Element.Just Datas matches 3 run particle flame ~ ~ ~ 0.2 0.2 0.2 0.1 5
    execute if score #Magic.Rod.Element.Just Datas matches 3 run particle dust 0.698 0.016 0.016 1 ~ ~ ~ 0.2 0.2 0.2 0.1 10

#water
    execute if score #Magic.Rod.Element.Just Datas matches 4 run particle falling_water ~ ~ ~ 0.2 0.2 0.2 0.1 10
    execute if score #Magic.Rod.Element.Just Datas matches 4 run particle dust 0.2 0.212 0.78 1 ~ ~ ~ 0.2 0.2 0.2 0.1 10
