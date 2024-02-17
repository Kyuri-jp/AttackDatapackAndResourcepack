# get using mp
    execute store result score $using.mp temporary run data get storage storage:settings Main.Weapons.Magics.Rods.UsingMp.WaterChain

# element
    function systems:weapons/magics/books/un_just

# call common pros
    function systems:weapons/magics/books/common/
    execute if score $weapons.magics.books.lackMp temporary matches 1 run return 0

# action
    #give effect
    execute if entity @a[distance=..1.5,limit=1,sort=nearest,tag=!weapons.magics.rods.user] run effect give @a[distance=..1.5,limit=1,sort=nearest,tag=!weapons.magics.rods.user] slowness 20 5
    #normal
    execute unless score $weapons.magics.rods.elements datas = $magics.rods.elements.just datas unless score $weapons.magics.rods.elements datas = $magics.rods.elements.unJust datas if entity @a[distance=..1.5,limit=1,sort=nearest,tag=!weapons.magics.rods.user] run damage @a[distance=..1.5,limit=1,sort=nearest,tag=!weapons.magics.rods.user] 3 libs:weapons/magics/books/water_chain by @a[tag=weapons.magics.rods.user,limit=1]
    #just
    execute if score $weapons.magics.rods.elements datas = $magics.rods.elements.just datas if entity @a[distance=..1.5,limit=1,sort=nearest,tag=!weapons.magics.rods.user] run damage @a[distance=..1.5,limit=1,sort=nearest,tag=!weapons.magics.rods.user] 3.6 libs:weapons/magics/books/water_chain by @a[tag=weapons.magics.rods.user,limit=1]
    #un just
    execute if score $weapons.magics.rods.elements datas = $magics.rods.elements.unJust datas if entity @a[distance=..1.5,limit=1,sort=nearest,tag=!weapons.magics.rods.user] run damage @a[distance=..1.5,limit=1,sort=nearest,tag=!weapons.magics.rods.user] 2.4 libs:weapons/magics/books/water_chain by @a[tag=weapons.magics.rods.user,limit=1]

# hit player
    execute if entity @a[distance=..1.5,limit=1,sort=nearest,tag=!weapons.magics.rods.user] run playsound block.grass.break player @a[distance=..1.5,limit=1]
    execute if entity @a[distance=..1.5,limit=1,sort=nearest,tag=!weapons.magics.rods.user] at @a[distance=..1.5,limit=1] run particle splash ~ ~ ~ 2 2 2 1 100 normal

# finish
    function systems:weapons/magics/books/common/finish
    execute if data storage storage:booleans {Main: {Weapons: {Magics: {Rods: {Shot: {Retrun: 1b}}}}}} run return 0
# recall
    execute positioned as @s run function systems:weapons/magics/books/actions/water_chain