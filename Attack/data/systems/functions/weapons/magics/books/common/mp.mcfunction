#> systems:weapons/magics/books/common/mp
# @within systems:weapons/magics/books/common/

# mp
    ## lack mp
        execute unless score $Magic.Shot.NowScope counter matches 1.. unless score @a[tag=Player.Magic.This,sort=nearest,limit=1] mp >= #Magic.UsingMp temporary run tellraw @a[tag=Player.Magic.This,sort=nearest,limit=1] {"interpret":true,"nbt":"Main.Weapons.Lack.Mp","storage":"storage:messages"}
        execute unless score $Magic.Shot.NowScope counter matches 1.. unless score @a[tag=Player.Magic.This,sort=nearest,limit=1] mp >= #Magic.UsingMp temporary run kill @s
        execute unless score $Magic.Shot.NowScope counter matches 1.. unless score @a[tag=Player.Magic.This,sort=nearest,limit=1] mp >= #Magic.UsingMp temporary run return 1
    ## enough mp
        execute unless score $Magic.Shot.NowScope counter matches 1.. if score @a[tag=Player.Magic.This,sort=nearest,limit=1] mp >= #Magic.UsingMp temporary run scoreboard players operation @a[tag=Player.Magic.This,sort=nearest,limit=1] mp -= #Magic.UsingMp temporary
        #just
        execute unless score $Magic.Shot.NowScope counter matches 1.. if score @a[tag=Player.Magic.This,sort=nearest,limit=1] mp >= #Magic.UsingMp temporary if score #Magics.Rod.Element datas = #Magic.Rod.Element.Just datas as @a[tag=Player.Magic.This,sort=nearest,limit=1] at @s run function systems:weapons/magics/books/vfx/just_element_sound

# call
    function systems:weapons/magics/books/common/move
    return 0