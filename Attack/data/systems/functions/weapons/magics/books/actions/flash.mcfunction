# get using mp
    execute store result score #Magic.UsingMp Temporary run data get storage attack:settings Main.Weapons.Magics.Rods.UsingMp.Flash

# element
    function systems:weapons/magics/books/un_just

# call common pros
    function systems:weapons/magics/books/common/
    execute if score #Magic.Shot.LackMp Temporary matches 1 run return fail

# action
    #particle
    execute if entity @e[type=#assets:can_give_damage,tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] at @e[type=#assets:can_give_damage,tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] positioned ~ ~1 ~ run function systems:weapons/magics/books/vfx/flash/

    #show title
    execute if entity @e[type=#assets:can_give_damage,tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] run title @a[tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] title {"text": "\uE000"}
    execute if entity @e[type=#assets:can_give_damage,tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] run title @a[tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] times 5t 5t 5t

    #damage
    function systems:weapons/magics/books/common/damage/ {"DamageType":flash,"BaseDamage":3}

# vfx
    execute if entity @e[type=#assets:can_give_damage,tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] run playsound block.beacon.deactivate player @a[distance=..1.5,limit=1]
    execute if entity @e[type=#assets:can_give_damage,tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] at @e[distance=..1.5,limit=1] run particle end_rod ~ ~ ~ 2 2 2 1 100 normal

# finish
    function systems:weapons/magics/books/common/finish
    execute if data storage attack:booleans {Main: {Weapons: {Magics: {Rods: {Shot: {Return: 1b}}}}}} run return 0

# recall
    execute positioned as @s run function systems:weapons/magics/books/actions/flash