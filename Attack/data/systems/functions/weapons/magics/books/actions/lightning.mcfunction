# get using mp
    execute store result score #Magic.UsingMp temporary run data get storage storage:settings Main.Weapons.Magics.Rods.UsingMp.Lightning

# element
    function systems:weapons/magics/books/un_just

# call common pros
    function systems:weapons/magics/books/common/
    execute if score #Magic.Shot.LackMp temporary matches 1 run return 0

# action
    execute if entity @a[tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] at @a[tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] run particle dust 0.816 1 0 2 ~ ~10 ~ 0 5 0 0.1 200 normal
    #normal
    execute unless score #Magics.Rod.Element datas = #Magic.Rod.Element.Just datas unless score #Magics.Rod.Element datas = #Magic.Rod.Element.unJust datas if entity @a[tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] run damage @a[tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] 10 assets:weapons/magics/books/lightning by @a[tag=Player.Magic.This,limit=1]
    #just
    execute if score #Magics.Rod.Element datas = #Magic.Rod.Element.Just datas if entity @a[tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] run damage @a[tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] 12 assets:weapons/magics/books/lightning by @a[tag=Player.Magic.This,limit=1]
    #un just
    execute if score #Magics.Rod.Element datas = #Magic.Rod.Element.unJust datas if entity @a[tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] run damage @a[tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] 8 assets:weapons/magics/books/lightning by @a[tag=Player.Magic.This,limit=1]

# hit player
    execute if entity @a[tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] run playsound entity.warden.angry player @a[distance=..1.5,limit=1]
    execute if entity @a[tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] at @a[distance=..1.5,limit=1] run particle end_rod ~ ~ ~ 1 1 1 1 3 normal

# finish
    function systems:weapons/magics/books/common/finish
    execute if data storage storage:booleans {Main: {Weapons: {Magics: {Rods: {Shot: {Retrun: 1b}}}}}} run return 0

# recall
    execute positioned as @s run function systems:weapons/magics/books/actions/lightning