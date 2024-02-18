# get using mp
    execute store result score #Magic.UsingMp temporary run data get storage storage:settings Main.Weapons.Magics.Rods.UsingMp.Drain

# call common pros
    function systems:weapons/magics/books/common/
    execute if score #Magic.Shot.LackMp temporary matches 1 run return 0

# action
    #heal
    execute if entity @a[tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] run effect give @a[tag=Player.Magic.This,limit=1] instant_health 1 5
    #normal
    execute unless score #Magics.Rod.Element datas = #Magic.Rod.Element.Just datas unless score #Magics.Rod.Element datas = #Magic.Rod.Element.unJust datas if entity @a[tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] run damage @a[tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] 5 assets:weapons/magics/books/drain by @a[tag=Player.Magic.This,limit=1]
    #just
    execute if score #Magics.Rod.Element datas = #Magic.Rod.Element.Just datas if entity @a[tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] run damage @a[tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] 6 assets:weapons/magics/books/drain by @a[tag=Player.Magic.This,limit=1]
    #un just
    execute if score #Magics.Rod.Element datas = #Magic.Rod.Element.unJust datas if entity @a[tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] run damage @a[tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] 4 assets:weapons/magics/books/drain by @a[tag=Player.Magic.This,limit=1]

# hit player
    execute if entity @a[tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] run playsound entity.generic.drink player @a[distance=..1.5,limit=1]
    execute if entity @a[tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] at @a[distance=..1.5,limit=1] run particle heart ~ ~ ~ 1 1 1 1 10 normal

# finish
    function systems:weapons/magics/books/common/finish
    execute if data storage storage:booleans {Main: {Weapons: {Magics: {Rods: {Shot: {Retrun: 1b}}}}}} run return 0

# recall
    execute positioned as @s run function systems:weapons/magics/books/actions/drain