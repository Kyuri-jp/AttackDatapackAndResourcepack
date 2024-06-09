# get using mp
    execute store result score #Magic.UsingMp Temporary run data get storage attack:settings Main.Weapons.Magics.Books.UsingMp.Inferno

# element
    function systems:weapons/magics/books/un_just

# call common pros
    function systems:weapons/magics/books/common/
    execute if score #Magic.Shot.LackMp Temporary matches 1 run return fail

# action
    #particle
    execute if entity @e[type=#assets:can_give_damage,tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] at @e[type=#assets:can_give_damage,tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] positioned ~ ~1 ~ run function systems:weapons/magics/books/vfx/inferno/

    #lost
    execute if entity @e[type=#assets:can_give_damage,tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] unless score $Magic.Shot.Inferno.RemovedItem Temporary matches 1.. store success score $Magic.Shot.Inferno.RemovedItem Temporary run clear @a[tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] book{MagicBook: true} 1

    #damage
    function systems:weapons/magics/books/common/damage/ {"DamageType":"inferno","BaseDamage":4}

# vfx
    execute if entity @e[type=#assets:can_give_damage,tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] run playsound item.shield.break player @a[distance=..1.5,limit=1]
    execute if entity @e[type=#assets:can_give_damage,tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] at @e[distance=..1.5,limit=1] run particle flame ~ ~ ~ 1 1 1 1 5 normal

# finish
    function systems:weapons/magics/books/common/finish
    execute if data storage attack:booleans {Main: {Weapons: {Magics: {Rods: {Shot: {Return: 1b}}}}}} run return 0

        ## recall
            execute positioned as @s run function systems:weapons/magics/books/actions/inferno
