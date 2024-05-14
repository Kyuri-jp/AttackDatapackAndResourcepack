#> systems:weapons/magics/books/un_just
# @within
#   systems:weapons/magics/books/common/
#   systems:weapons/magics/books/actions/*

# set
    execute if score #Magic.Book.Element Temporary matches 0 run scoreboard players set #Magic.Rod.Element.UnJust Temporary 0
    execute if score #Magic.Book.Element Temporary matches 1 run scoreboard players set #Magic.Rod.Element.UnJust Temporary 2
    execute if score #Magic.Book.Element Temporary matches 2 run scoreboard players set #Magic.Rod.Element.UnJust Temporary 1
    execute if score #Magic.Book.Element Temporary matches 3 run scoreboard players set #Magic.Rod.Element.UnJust Temporary 4
    execute if score #Magic.Book.Element Temporary matches 4 run scoreboard players set #Magic.Rod.Element.UnJust Temporary 3