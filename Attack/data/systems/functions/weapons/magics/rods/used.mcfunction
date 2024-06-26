#> systems:weapons/magics/rods/used
#
# 杖を使用した際の処理
#
# @handles systems:tick/as_at
# @within systems:tick/as_at

#> Tag
# @within
#   systems:weapons/magics/books/**
#   systems:weapons/magics/rods/used
    #declare tag Player.Magic.This
    #declare tag Anchor.MagicShot

#> Score Holder
# @within
#   systems:weapons/magics/books/**
#   systems:weapons/magics/rods/used
#   assets:items/weapons/magics/books/damage/*
    #declare score_holder #Magics.Rod.Element

# reset
    scoreboard players reset @s UseFungusStick

# message
    ## no book
        execute unless predicate assets:items/weapons/magics/books/any_books run return run tellraw @s {"translate":"info.weapons.magics.missing.book","bold":true}

        # set tag
            tag @s add Player.Magic.This

        # emelemnts
            scoreboard players set #Magics.Rod.Element Temporary 0
            execute if predicate assets:items/weapons/magics/rods/just/air run scoreboard players set #Magics.Rod.Element Temporary 1
            execute if predicate assets:items/weapons/magics/rods/just/dirt run scoreboard players set #Magics.Rod.Element Temporary 2
            execute if predicate assets:items/weapons/magics/rods/just/fire run scoreboard players set #Magics.Rod.Element Temporary 3
            execute if predicate assets:items/weapons/magics/rods/just/water run scoreboard players set #Magics.Rod.Element Temporary 4

            data modify storage attack:temporary Magics.Rod.JustDamageRate set from entity @s SelectedItem.tag.JustDamageRate
            data modify storage attack:temporary Magics.Rod.UnJustDamageRate set from entity @s SelectedItem.tag.UnJustDamageRate

        # summon
            execute anchored eyes run summon armor_stand ^ ^ ^ {Invisible: true, Marker: true, Tags: ["Anchor.MagicShot"]}
            data modify entity @e[type=armor_stand,tag=Anchor.MagicShot,sort=nearest,limit=1] Rotation set from entity @s Rotation

        # books
            function systems:weapons/magics/books/book_selector

        # vfx
            particle end_rod ~ ~ ~ 0.5 0.5 0.5 0.2 20 normal
            particle enchant ~ ~ ~ 0 0 0 0.2 10 normal
            playsound block.beacon.activate player @s ~ ~ ~ 1 1.5
            playsound entity.firework_rocket.blast player @s ~ ~ ~ 1 1.5
