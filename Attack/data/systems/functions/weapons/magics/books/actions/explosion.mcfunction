# get using mp
    execute store result score #Magic.UsingMp Temporary run data get storage attack:settings Main.Weapons.Magics.Rods.UsingMp.Explosion

# call common pros
    function systems:weapons/magics/books/common/
    execute if score #Magic.Shot.LackMp Temporary matches 1 run return fail

# action
    #damage
    execute if entity @a[tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] run function systems:weapons/magics/books/common/damage/ {"DamageType":"assets:weapons/magics/books/explosion"}

## hit player
    execute if entity @a[tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] run playsound entity.lightning_bolt.impact player @a[distance=..1.5,limit=1]
    execute if entity @a[tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] at @a[distance=..1.5,limit=1] run particle explosion ~ ~ ~ 1 1 1 1 5 normal

# finish
    function systems:weapons/magics/books/common/finish
    execute if data storage attack:booleans {Main: {Weapons: {Magics: {Rods: {Shot: {Return: 1b}}}}}} run return 0

# recall
    execute positioned as @s run function systems:weapons/magics/books/actions/explosion
