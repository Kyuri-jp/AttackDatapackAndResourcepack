#> systems:weapons/magics/books/just
# @within systems:weapons/magics/books/detect_books

# set
    execute if predicate assets:items/weapons/magics/books/elements/none run scoreboard players set #Magic.Rod.Element.Just datas 0
    execute if predicate assets:items/weapons/magics/books/elements/air run scoreboard players set #Magic.Rod.Element.Just datas 1
    execute if predicate assets:items/weapons/magics/books/elements/dirt run scoreboard players set #Magic.Rod.Element.Just datas 2
    execute if predicate assets:items/weapons/magics/books/elements/fire run scoreboard players set #Magic.Rod.Element.Just datas 3
    execute if predicate assets:items/weapons/magics/books/elements/water run scoreboard players set #Magic.Rod.Element.Just datas 4