#> systems:weapons/magics/books/common/move
# @within systems:weapons/magics/books/commom/mp

# pros
    ## teleport
        tp ^ ^ ^0.5

    ## vfx
        particle end_rod ~ ~ ~ 0 0 0 0 2 normal
        #just element
        execute if score #Magics.Rod.Element datas = #Magic.Rod.Element.Just datas run function systems:weapons/magics/books/vfx/just_element_particle

    ## player detect
        execute if entity @a[distance=..1.5,limit=1,sort=nearest,tag=!Player.Magic.This] run tag @s add Magics.Shot.DetectedPlayer