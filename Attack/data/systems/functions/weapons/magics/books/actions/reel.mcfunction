# get using mp
    execute store result score $attack.using.mp temporary run data get storage storage:settings Main.Weapons.Magics.Rods.UsingMp.Reel

# element
    function systems:weapons/magics/books/un_just

# call common pros
    function systems:weapons/magics/books/common/
    execute if score $attack.weapons.magics.books.lackMp temporary matches 1 run return 0

# action
    #teleport
    execute if entity @a[distance=..1.5,limit=1,sort=nearest,tag=!weapons.magics.rods.user] run tp @a[tag=weapons.magics.rods.user,limit=1] @a[distance=..1.5,limit=1,sort=nearest,tag=!weapons.magics.rods.user]
    execute if entity @a[distance=..1.5,limit=1,sort=nearest,tag=!weapons.magics.rods.user] as @a[tag=weapons.magics.rods.user,limit=1] at @s if block ^ ^ ^-1 #libs:as_air run tp @s ^ ^ ^-1
    #normal
    execute unless score $attack.weapons.magics.rods.elements datas = $attack.magics.rods.elements.just datas unless score $attack.weapons.magics.rods.elements datas = $attack.magics.rods.elements.unJust datas if entity @a[distance=..1.5,limit=1,sort=nearest,tag=!weapons.magics.rods.user] run damage @a[distance=..1.5,limit=1,sort=nearest,tag=!weapons.magics.rods.user] 3 libs:reel by @a[tag=weapons.magics.rods.user,limit=1]
    #just
    execute if score $attack.weapons.magics.rods.elements datas = $attack.magics.rods.elements.just datas if entity @a[distance=..1.5,limit=1,sort=nearest,tag=!weapons.magics.rods.user] run damage @a[distance=..1.5,limit=1,sort=nearest,tag=!weapons.magics.rods.user] 3.6 libs:reel by @a[tag=weapons.magics.rods.user,limit=1]
    #un just
    execute if score $attack.weapons.magics.rods.elements datas = $attack.magics.rods.elements.unJust datas if entity @a[distance=..1.5,limit=1,sort=nearest,tag=!weapons.magics.rods.user] run damage @a[distance=..1.5,limit=1,sort=nearest,tag=!weapons.magics.rods.user] 2.4 libs:reel by @a[tag=weapons.magics.rods.user,limit=1]

# hit player
    execute if entity @a[distance=..1.5,limit=1,sort=nearest,tag=!weapons.magics.rods.user] run playsound entity.enderman.teleport player @a[distance=..1.5,limit=1]
    execute if entity @a[distance=..1.5,limit=1,sort=nearest,tag=!weapons.magics.rods.user] at @a[distance=..1.5,limit=1] run particle dust 0.427 0.051 0.404 1 ~ ~ ~ 2 2 2 1 20 normal

# finish
    function systems:weapons/magics/books/common/finish
    execute if data storage storage:booleans {Main: {Weapons: {Magics: {Rods: {Shot: {Retrun: 1b}}}}}} run return 0
           
# recall
    execute positioned as @s run function systems:weapons/magics/books/actions/reel