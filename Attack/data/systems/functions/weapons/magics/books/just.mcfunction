#> systems:weapons/magics/books/just
# @within systems:weapons/magics/books/book_selector

# set
    execute if predicate assets:items/weapons/magics/books/elements/none run scoreboard players set #Magic.Book.Element Datas 0
    execute if predicate assets:items/weapons/magics/books/elements/air run scoreboard players set #Magic.Book.Element Datas 1
    execute if predicate assets:items/weapons/magics/books/elements/dirt run scoreboard players set #Magic.Book.Element Datas 2
    execute if predicate assets:items/weapons/magics/books/elements/fire run scoreboard players set #Magic.Book.Element Datas 3
    execute if predicate assets:items/weapons/magics/books/elements/water run scoreboard players set #Magic.Book.Element Datas 4