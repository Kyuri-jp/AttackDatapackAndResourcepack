#> systems:weapons/magics/books/common/
# @within systems:weapons/magics/books/actions/*

#> tag
# @within systems:weapons/magics/books/common/*
    #declare tag Magics.Shot.DetectedPlayer


# element
    function systems:weapons/magics/books/un_just

# init
    data modify storage attack:booleans Main.Weapons.Magics.Rods.Shot.Return set value false

# call
    execute store result score #Magic.Shot.LackMp temporary run function systems:weapons/magics/books/common/mp

# kill stand(player detect) and can return
    execute store success storage attack:booleans Main.Weapons.Magics.Rods.Shot.Return byte 1 run kill @s[tag=Magics.Shot.DetectedPlayer]