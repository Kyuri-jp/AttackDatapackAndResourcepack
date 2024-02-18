# get using mp
    execute store result score #Magic.UsingMp temporary run data get storage storage:settings Main.Weapons.Magics.Rods.UsingMp.Inferno

# element
    function systems:weapons/magics/books/un_just

# call common pros
    function systems:weapons/magics/books/common/
    execute if score #Magic.Shot.LackMp temporary matches 1 run return 0

# action
    # lost
    execute if entity @a[tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] unless score $Magic.Shot.Inferno.RemovedItem temporary matches 1.. store success score $Magic.Shot.Inferno.RemovedItem temporary run clear @a[tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] book{MagicBook: true} 1
    #normal
    execute unless score #Magics.Rod.Element datas = #Magic.Rod.Element.Just datas unless score #Magics.Rod.Element datas = #Magic.Rod.Element.unJust datas if entity @a[tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] run damage @a[tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] 3 assets:weapons/magics/books/inferno by @a[tag=Player.Magic.This,limit=1]
    #just
    execute if score #Magics.Rod.Element datas = #Magic.Rod.Element.Just datas if entity @a[tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] run damage @a[tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] 3.6 assets:weapons/magics/books/inferno by @a[tag=Player.Magic.This,limit=1]
    #un just
    execute if score #Magics.Rod.Element datas = #Magic.Rod.Element.unJust datas if entity @a[tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] run damage @a[tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] 2.4 assets:weapons/magics/books/inferno by @a[tag=Player.Magic.This,limit=1]

# hit player
    execute if entity @a[tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] run playsound item.shield.break player @a[distance=..1.5,limit=1]
    execute if entity @a[tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] at @a[distance=..1.5,limit=1] run particle flame ~ ~ ~ 1 1 1 1 5 normal

# finish
    function systems:weapons/magics/books/common/finish
    execute if data storage storage:booleans {Main: {Weapons: {Magics: {Rods: {Shot: {Retrun: 1b}}}}}} run return 0

        ## recall
            execute positioned as @s run function systems:weapons/magics/books/actions/inferno
