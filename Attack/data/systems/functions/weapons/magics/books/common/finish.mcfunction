#> systems:weapons/magics/books/common/finish
# @within systems:weapons/magics/books/actions/*

#> tag
# @private
    #declare tag Magic.Shot.DetectedWall

# return
    execute if data storage attack:booleans {Main: {Weapons: {Magics: {Rods: {Shot: {Retrun: 1b}}}}}} run return 0

# wall detect and can return
    execute unless block ~ ~ ~ #assets:as_air run tag @s add Magic.Shot.DetectedWall
    execute store success storage attack:booleans Main.Weapons.Magics.Rods.Shot.Retrun byte 1 run kill @s[tag=Magic.Shot.DetectedWall]

# return
    execute if data storage attack:booleans {Main: {Weapons: {Magics: {Rods: {Shot: {Retrun: 1b}}}}}} run return 0

# counter
    scoreboard players add $Magic.Shot.NowScope counter 1

# scope over
    execute if score $Magic.Shot.NowScope counter >= #Magic.Shot.ScopeLimit temporary run kill @s
    execute store success storage attack:booleans Main.Weapons.Magics.Rods.Shot.Retrun byte 1 if score $Magic.Shot.NowScope counter >= #Magic.Shot.ScopeLimit temporary
