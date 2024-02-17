# get using mp
    execute store result score #Magic.UsingMp temporary run data get storage storage:settings Main.Weapons.Magics.Rods.UsingMp.Dark

# call common pros
    function systems:weapons/magics/books/common/
    execute if score #Magic.Shot.LackMp temporary matches 1 run return 0

# action
    #darkness
    execute if entity @a[distance=..1.5,limit=1,sort=nearest,tag=!Player.Magic.This] run effect give @a[distance=..1.5,limit=1,sort=nearest,tag=!Player.Magic.This] darkness 5 0
    #normal
    execute unless score #Magics.Rod.Element datas = #Magic.Rod.Element.Just datas unless score #Magics.Rod.Element datas = #Magic.Rod.Element.unJust datas if entity @a[distance=..1.5,limit=1,sort=nearest,tag=!Player.Magic.This] run damage @a[distance=..1.5,limit=1,sort=nearest,tag=!Player.Magic.This] 5 assets:weapons/magics/books/dark by @a[tag=Player.Magic.This,limit=1]
    #just
    execute if score #Magics.Rod.Element datas = #Magic.Rod.Element.Just datas if entity @a[distance=..1.5,limit=1,sort=nearest,tag=!Player.Magic.This] run damage @a[distance=..1.5,limit=1,sort=nearest,tag=!Player.Magic.This] 6 assets:weapons/magics/books/dark by @a[tag=Player.Magic.This,limit=1]
    #un just
    execute if score #Magics.Rod.Element datas = #Magic.Rod.Element.unJust datas if entity @a[distance=..1.5,limit=1,sort=nearest,tag=!Player.Magic.This] run damage @a[distance=..1.5,limit=1,sort=nearest,tag=!Player.Magic.This] 4 assets:weapons/magics/books/dark by @a[tag=Player.Magic.This,limit=1]

# hit player
    execute if entity @a[distance=..1.5,limit=1,sort=nearest,tag=!Player.Magic.This] run playsound entity.warden.angry player @a[distance=..1.5,limit=1]
    execute if entity @a[distance=..1.5,limit=1,sort=nearest,tag=!Player.Magic.This] at @a[distance=..1.5,limit=1] run particle dust 0 0 0 1 ~ ~ ~ 2 2 2 1 20 normal

# finish
    function systems:weapons/magics/books/common/finish
    execute if data storage storage:booleans {Main: {Weapons: {Magics: {Rods: {Shot: {Retrun: 1b}}}}}} run return 0

# recall
    execute positioned as @s run function systems:weapons/magics/books/actions/dark
