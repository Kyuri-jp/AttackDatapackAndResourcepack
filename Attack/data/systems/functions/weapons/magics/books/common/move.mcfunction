# pros
    ## teleport
        tp ^ ^ ^0.5

    ## vfx
        particle end_rod ~ ~ ~ 0 0 0 0 2 normal
        #just element
        execute if score $attack.weapons.magics.rods.elements datas = $attack.magics.rods.elements.just datas run function systems:weapons/magics/books/vfx/just_element_particle

    ## player detect
        execute if entity @a[distance=..1.5,limit=1,sort=nearest,tag=!weapons.magics.rods.user] run tag @s add attack.magics.rod.detect.player