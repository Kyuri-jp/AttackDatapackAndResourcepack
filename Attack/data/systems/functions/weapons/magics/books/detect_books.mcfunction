#> systems:weapons/magics/books/detect_books
#
# 魔法の分岐
#
# @within systems:weapons/magics/rods/used

#> tag
# @within
#   systems:weapons/magics/books/**
    #declare score_holder #Magic.UsingMp
    #declare score_holder #Magic.Shot.ScopeLimit
    #declare score_holder $Magic.Shot.NowScope
    #declare score_holder $Magic.Shot.Inferno.RemovedItem
    #declare score_holder #Magic.Shot.LackMp
    #declare score_holder #Magic.Rod.Element.Just
    #declare score_holder #Magic.Rod.Element.unJust

# init?
    scoreboard players reset $Magic.Shot.NowScope counter

# get
    ## shot scope
    #shot用アマスタは0.5ずつ進んでいるので2倍(scale -> 2)
        execute store result score #Magic.Shot.ScopeLimit temporary run data get storage storage:settings Main.Weapons.Magics.Rods.Shot.Scope 2

    # just element
        function systems:weapons/magics/books/just

    # detect
        execute if predicate assets:items/weapons/magics/books/explosion as @e[type=armor_stand,tag=Anchor.MagicShot,sort=nearest,limit=1] at @s run function systems:weapons/magics/books/actions/explosion
        execute if predicate assets:items/weapons/magics/books/lightning as @e[type=armor_stand,tag=Anchor.MagicShot,sort=nearest,limit=1] at @s run function systems:weapons/magics/books/actions/lightning
        execute if predicate assets:items/weapons/magics/books/dark as @e[type=armor_stand,tag=Anchor.MagicShot,sort=nearest,limit=1] at @s run function systems:weapons/magics/books/actions/dark
        execute if predicate assets:items/weapons/magics/books/drain as @e[type=armor_stand,tag=Anchor.MagicShot,sort=nearest,limit=1] at @s run function systems:weapons/magics/books/actions/drain
        execute if predicate assets:items/weapons/magics/books/meteor as @e[type=armor_stand,tag=Anchor.MagicShot,sort=nearest,limit=1] at @s run function systems:weapons/magics/books/actions/meteor
        execute if predicate assets:items/weapons/magics/books/water_chain as @e[type=armor_stand,tag=Anchor.MagicShot,sort=nearest,limit=1] at @s run function systems:weapons/magics/books/actions/water_chain
        execute if predicate assets:items/weapons/magics/books/flash as @e[type=armor_stand,tag=Anchor.MagicShot,sort=nearest,limit=1] at @s run function systems:weapons/magics/books/actions/flash
        execute if predicate assets:items/weapons/magics/books/reel as @e[type=armor_stand,tag=Anchor.MagicShot,sort=nearest,limit=1] at @s run function systems:weapons/magics/books/actions/reel
        execute if predicate assets:items/weapons/magics/books/poison_drink as @e[type=armor_stand,tag=Anchor.MagicShot,sort=nearest,limit=1] at @s run function systems:weapons/magics/books/actions/poison_drink
        execute if predicate assets:items/weapons/magics/books/inferno as @e[type=armor_stand,tag=Anchor.MagicShot,sort=nearest,limit=1] at @s run function systems:weapons/magics/books/actions/inferno

    # remove tag
        tag @s remove Player.Magic.This

    # reset
        scoreboard players reset #Magic.Shot.ScopeLimit temporary
        scoreboard players reset #Magic.UsingMp temporary
        scoreboard players reset $Magic.Shot.Inferno.RemovedItem temporary
        scoreboard players reset #Magic.Shot.LackMp temporary
        scoreboard players reset $Magic.Shot.NowScope counter
        scoreboard players reset #Magics.Rod.Element datas
        scoreboard players reset #Magic.Rod.Element.Just datas
        scoreboard players reset #Magic.Rod.Element.unJust datas
