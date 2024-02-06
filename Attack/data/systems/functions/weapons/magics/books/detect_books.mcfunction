# init?
    scoreboard players reset $attack.counter.magics.rods.scope counter

# get
    ## shot scope
    #shot用アマスタは0.5ずつ進んでいるので2倍(scale -> 2)
        execute store result score $attack.magics.rods.scope temporary run data get storage storage:settings Main.Weapons.Magics.Rods.Shot.Scope 2

    # just element
        function systems:weapons/magics/books/just

    # detect
        execute if predicate libs:items/weapons/magics/books/explosion as @e[type=armor_stand,tag=weapons.anchor.magics.rods,sort=nearest,limit=1] at @s run function systems:weapons/magics/books/actions/explosion
        execute if predicate libs:items/weapons/magics/books/lightning as @e[type=armor_stand,tag=weapons.anchor.magics.rods,sort=nearest,limit=1] at @s run function systems:weapons/magics/books/actions/lightning
        execute if predicate libs:items/weapons/magics/books/dark as @e[type=armor_stand,tag=weapons.anchor.magics.rods,sort=nearest,limit=1] at @s run function systems:weapons/magics/books/actions/dark
        execute if predicate libs:items/weapons/magics/books/drain as @e[type=armor_stand,tag=weapons.anchor.magics.rods,sort=nearest,limit=1] at @s run function systems:weapons/magics/books/actions/drain
        execute if predicate libs:items/weapons/magics/books/meteor as @e[type=armor_stand,tag=weapons.anchor.magics.rods,sort=nearest,limit=1] at @s run function systems:weapons/magics/books/actions/meteor
        execute if predicate libs:items/weapons/magics/books/water_chain as @e[type=armor_stand,tag=weapons.anchor.magics.rods,sort=nearest,limit=1] at @s run function systems:weapons/magics/books/actions/water_chain
        execute if predicate libs:items/weapons/magics/books/flash as @e[type=armor_stand,tag=weapons.anchor.magics.rods,sort=nearest,limit=1] at @s run function systems:weapons/magics/books/actions/flash
        execute if predicate libs:items/weapons/magics/books/reel as @e[type=armor_stand,tag=weapons.anchor.magics.rods,sort=nearest,limit=1] at @s run function systems:weapons/magics/books/actions/reel

    # remove tag
        tag @s remove weapons.magics.rods.user

    # reset
        scoreboard players reset $attack.magics.rods.scope temporary
        scoreboard players reset $attack.using.mp temporary
        scoreboard players reset $attack.counter.magics.rods.scope counter
        scoreboard players reset $attack.weapons.magics.rods.elements datas
        scoreboard players reset $attack.magics.rods.elements.just datas
        scoreboard players reset $attack.magics.rods.elements.unJust datas
