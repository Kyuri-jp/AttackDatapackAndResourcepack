# get using mp
    execute store result score #Magic.UsingMp Temporary run data get storage attack:settings Main.Weapons.Magics.Rods.UsingMp.Reel

# element
    function systems:weapons/magics/books/un_just

# call common pros
    function systems:weapons/magics/books/common/
    execute if score #Magic.Shot.LackMp Temporary matches 1 run return fail

# action
    #teleport
    execute if entity @a[tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] run tp @a[tag=Player.Magic.This,limit=1] @a[tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1]
    execute if entity @a[tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] as @a[tag=Player.Magic.This,limit=1] at @s if block ^ ^ ^-1 #assets:as_air run tp @s ^ ^ ^-1

    #damage
    execute if entity @a[tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] run function systems:weapons/magics/books/common/damage/ {"DamageType":"assets:weapons/magics/books/reel"}

# hit player
    execute if entity @a[tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] run playsound entity.enderman.teleport player @a[distance=..1.5,limit=1]
    execute if entity @a[tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] at @a[distance=..1.5,limit=1] run particle dust 0.427 0.051 0.404 1 ~ ~ ~ 2 2 2 1 20 normal

# finish
    function systems:weapons/magics/books/common/finish
    execute if data storage attack:booleans {Main: {Weapons: {Magics: {Rods: {Shot: {Return: 1b}}}}}} run return 0
           
# recall
    execute positioned as @s run function systems:weapons/magics/books/actions/reel