#> systems:weapons/magics/books/common/mp
# @within systems:weapons/magics/books/common/
# mp
    ## lack mp
        execute unless score $Magic.Shot.NowScope Counter matches 1.. unless score @a[tag=Player.Magic.This,sort=nearest,limit=1] Mp >= #Magic.UsingMp Temporary run tellraw @a[tag=Player.Magic.This,sort=nearest,limit=1] {"translate":"info.weapons.magics.lack.mp","bold":true}
        execute unless score $Magic.Shot.NowScope Counter matches 1.. unless score @a[tag=Player.Magic.This,sort=nearest,limit=1] Mp >= #Magic.UsingMp Temporary run kill @s
        execute unless score $Magic.Shot.NowScope Counter matches 1.. unless score @a[tag=Player.Magic.This,sort=nearest,limit=1] Mp >= #Magic.UsingMp Temporary run return 1
    ## enough mp
        execute unless score $Magic.Shot.NowScope Counter matches 1.. if score @a[tag=Player.Magic.This,sort=nearest,limit=1] Mp >= #Magic.UsingMp Temporary run scoreboard players operation @a[tag=Player.Magic.This,sort=nearest,limit=1] Mp -= #Magic.UsingMp Temporary
        #just
        execute unless score $Magic.Shot.NowScope Counter matches 1.. if score @a[tag=Player.Magic.This,sort=nearest,limit=1] Mp >= #Magic.UsingMp Temporary if predicate assets:items/weapons/magics/books/damage/just as @a[tag=Player.Magic.This,sort=nearest,limit=1] at @s run function systems:weapons/magics/books/vfx/just_element_sound

# call
    function systems:weapons/magics/books/common/move
    return 0