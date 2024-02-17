# get using mp
    execute store result score #Magic.UsingMp temporary run data get storage storage:settings Main.Weapons.Magics.Rods.UsingMp.Explosion

# call common pros
    function systems:weapons/magics/books/common/
    execute if score #Magic.Shot.LackMp temporary matches 1 run return 0

# action
    #normal
    execute unless score #Magics.Rod.Element datas = #Magic.Rod.Element.Just datas unless score #Magics.Rod.Element datas = #Magic.Rod.Element.unJust datas if entity @a[distance=..1.5,limit=1,sort=nearest,tag=!Player.Magic.This] run damage @a[distance=..1.5,limit=1,sort=nearest,tag=!Player.Magic.This] 7 assets:weapons/magics/books/explosion by @a[tag=Player.Magic.This,limit=1]
    #just
    execute if score #Magics.Rod.Element datas = #Magic.Rod.Element.Just datas if entity @a[distance=..1.5,limit=1,sort=nearest,tag=!Player.Magic.This] run damage @a[distance=..1.5,limit=1,sort=nearest,tag=!Player.Magic.This] 8.4 assets:weapons/magics/books/explosion by @a[tag=Player.Magic.This,limit=1]
    #un just
    execute if score #Magics.Rod.Element datas = #Magic.Rod.Element.unJust datas if entity @a[distance=..1.5,limit=1,sort=nearest,tag=!Player.Magic.This] run damage @a[distance=..1.5,limit=1,sort=nearest,tag=!Player.Magic.This] 5.6 assets:weapons/magics/books/explosion by @a[tag=Player.Magic.This,limit=1]

## hit player
    execute if entity @a[distance=..1.5,limit=1,sort=nearest,tag=!Player.Magic.This] run playsound entity.lightning_bolt.impact player @a[distance=..1.5,limit=1]
    execute if entity @a[distance=..1.5,limit=1,sort=nearest,tag=!Player.Magic.This] at @a[distance=..1.5,limit=1] run particle explosion ~ ~ ~ 1 1 1 1 5 normal

# finish
    function systems:weapons/magics/books/common/finish
    execute if data storage storage:booleans {Main: {Weapons: {Magics: {Rods: {Shot: {Retrun: 1b}}}}}} run return 0

# recall
    execute positioned as @s run function systems:weapons/magics/books/actions/explosion
