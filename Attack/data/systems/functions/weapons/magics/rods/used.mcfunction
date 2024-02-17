#> systems:weapons/magics/rods/used
# @handles systems:as_at
# @within systems:as_at

# reset
    scoreboard players reset @s useFungusStick

# message
    ## no book
        execute unless predicate libs:items/weapons/magics/books/any_books run tellraw @s {"interpret":true,"nbt":"Main.Weapons.Missing.Book","storage":"storage:messages"}
        ## retrun
            execute unless predicate libs:items/weapons/magics/books/any_books run return 0

        # set tag
            tag @s add weapons.magics.rods.user

        # emelemnts
            scoreboard players set $weapons.magics.rods.elements datas 0
            execute if predicate libs:items/weapons/magics/rods/air_rod run scoreboard players set $weapons.magics.rods.elements datas 1
            execute if predicate libs:items/weapons/magics/rods/dirt_rod run scoreboard players set $weapons.magics.rods.elements datas 2
            execute if predicate libs:items/weapons/magics/rods/fire_rod run scoreboard players set $weapons.magics.rods.elements datas 3
            execute if predicate libs:items/weapons/magics/rods/water_rod run scoreboard players set $weapons.magics.rods.elements datas 4

        # summon
            execute anchored eyes run summon armor_stand ^ ^ ^ {Marker: true, Invisible: true, Tags: ["weapons.anchor.magics.rods"]}
            data modify entity @e[type=armor_stand,tag=weapons.anchor.magics.rods,sort=nearest,limit=1] Rotation set from entity @s Rotation

        # books
            function systems:weapons/magics/books/detect_books

        # vfx
            particle end_rod ~ ~ ~ 0 0 0 0.2 10 normal
            playsound block.beacon.activate player @s ~ ~ ~ 1 1.5
