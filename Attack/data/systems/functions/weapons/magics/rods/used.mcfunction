#> systems:weapons/magics/rods/used
# @handles systems:tick/as_at
# @within systems:tick/as_at

#> tag
# @within
#   systems:weapons/magics/books/**
#   systems:weapons/magics/rods/used
    #declare tag Player.Magic.This
    #declare tag Anchor.MagicShot

#> score holder
# @within
#   systems:weapons/magics/books/**
#   systems:weapons/magics/rods/used
    #declare score_holder #Magics.Rod.Element

# reset
    scoreboard players reset @s useFungusStick

# message
    ## no book
        execute unless predicate assets:items/weapons/magics/books/any_books run return run tellraw @s {"interpret":true,"nbt":"Main.Weapons.Missing.Book","storage":"attack:messages"}

        # set tag
            tag @s add Player.Magic.This

        # emelemnts
            scoreboard players set #Magics.Rod.Element datas 0
            execute if predicate assets:items/weapons/magics/rods/air_rod run scoreboard players set #Magics.Rod.Element datas 1
            execute if predicate assets:items/weapons/magics/rods/dirt_rod run scoreboard players set #Magics.Rod.Element datas 2
            execute if predicate assets:items/weapons/magics/rods/fire_rod run scoreboard players set #Magics.Rod.Element datas 3
            execute if predicate assets:items/weapons/magics/rods/water_rod run scoreboard players set #Magics.Rod.Element datas 4

        # summon
            execute anchored eyes run summon armor_stand ^ ^ ^ {Invisible: true, Marker: true, Tags: ["Anchor.MagicShot"]}
            data modify entity @e[type=armor_stand,tag=Anchor.MagicShot,sort=nearest,limit=1] Rotation set from entity @s Rotation

        # books
            function systems:weapons/magics/books/detect_books

        # vfx
            particle end_rod ~ ~ ~ 0 0 0 0.2 10 normal
            playsound block.beacon.activate player @s ~ ~ ~ 1 1.5
