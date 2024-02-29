# get using mp
    execute store result score #Magic.UsingMp Temporary run data get storage attack:settings Main.Weapons.Magics.Rods.UsingMp.Dark

# call common pros
    function systems:weapons/magics/books/common/
    execute if score #Magic.Shot.LackMp Temporary matches 1 run return fail

# action
    #darkness
    execute if entity @e[type=#assets:can_give_damage,tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] run effect give @e[type=#assets:can_give_damage,tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] darkness 5 0

    #damage
    function systems:weapons/magics/books/common/damage/ {"DamageType":dark,"BaseDamage":5}

# hit player
    execute if entity @e[type=#assets:can_give_damage,tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] run playsound entity.warden.angry player @a[distance=..1.5,limit=1]
    execute if entity @e[type=#assets:can_give_damage,tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] at @a[distance=..1.5,limit=1] run particle dust 0 0 0 1 ~ ~ ~ 2 2 2 1 20 normal

# finish
    function systems:weapons/magics/books/common/finish
    execute if data storage attack:booleans {Main: {Weapons: {Magics: {Rods: {Shot: {Return: 1b}}}}}} run return 0

# recall
    execute positioned as @s run function systems:weapons/magics/books/actions/dark
