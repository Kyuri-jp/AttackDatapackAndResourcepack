#> systems:weapons/magics/books/common/move
# @within systems:weapons/magics/books/common/mp

# pros
    ## teleport
        tp ^ ^ ^0.5

    ## vfx
        particle end_rod ~ ~ ~ 0 0 0 0.01 5 normal
        #just element
        execute if predicate assets:items/weapons/magics/books/damage/just as @a[tag=Player.Magic.This,limit=1] run function systems:weapons/magics/books/vfx/just_element_particle

    ## player detect
        execute if entity @e[type=#assets:can_give_damage,tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] run tag @s add Magics.Shot.DetectedPlayer