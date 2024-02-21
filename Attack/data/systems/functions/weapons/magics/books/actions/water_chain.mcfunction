# get using mp
    execute store result score #Magic.UsingMp Temporary run data get storage attack:settings Main.Weapons.Magics.Rods.UsingMp.WaterChain

# element
    function systems:weapons/magics/books/un_just

# call common pros
    function systems:weapons/magics/books/common/
    execute if score #Magic.Shot.LackMp Temporary matches 1 run return fail

# action
    #give effect
    execute if entity @a[tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] run effect give @a[tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] slowness 20 5
    #normal
    execute unless score #Magics.Rod.Element Datas = #Magic.Rod.Element.Just Datas unless score #Magics.Rod.Element Datas = #Magic.Rod.Element.unJust Datas if entity @a[tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] run damage @a[tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] 3 assets:weapons/magics/books/water_chain by @a[tag=Player.Magic.This,limit=1]
    #just
    execute if score #Magics.Rod.Element Datas = #Magic.Rod.Element.Just Datas if entity @a[tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] run damage @a[tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] 3.6 assets:weapons/magics/books/water_chain by @a[tag=Player.Magic.This,limit=1]
    #un just
    execute if score #Magics.Rod.Element Datas = #Magic.Rod.Element.unJust Datas if entity @a[tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] run damage @a[tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] 2.4 assets:weapons/magics/books/water_chain by @a[tag=Player.Magic.This,limit=1]

# hit player
    execute if entity @a[tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] run playsound block.grass.break player @a[distance=..1.5,limit=1]
    execute if entity @a[tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] at @a[distance=..1.5,limit=1] run particle splash ~ ~ ~ 2 2 2 1 100 normal

# finish
    function systems:weapons/magics/books/common/finish
    execute if data storage attack:booleans {Main: {Weapons: {Magics: {Rods: {Shot: {Return: 1b}}}}}} run return 0
# recall
    execute positioned as @s run function systems:weapons/magics/books/actions/water_chain