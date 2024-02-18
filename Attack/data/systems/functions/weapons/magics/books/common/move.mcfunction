#> systems:weapons/magics/books/common/move
# @within systems:weapons/magics/books/common/mp

# pros
    ## teleport
        tp ^ ^ ^0.5

    ## vfx
        particle end_rod ~ ~ ~ 0 0 0 0 2 normal
        #just element
        execute if score #Magics.Rod.Element datas = #Magic.Rod.Element.Just datas run function systems:weapons/magics/books/vfx/just_element_particle

    ## player detect
        execute if entity @a[tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] run tag @s add Magics.Shot.DetectedPlayer