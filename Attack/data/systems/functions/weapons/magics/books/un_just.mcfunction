#> systems:weapons/magics/books/un_just
# @within
#   systems:weapons/magics/books/common/
#   systems:weapons/magics/books/actions/*

# set
    execute if score #Magic.Rod.Element.Just Datas matches 0 run scoreboard players set #Magic.Rod.Element.UnJust Datas 0
    execute if score #Magic.Rod.Element.Just Datas matches 1 run scoreboard players set #Magic.Rod.Element.UnJust Datas 2
    execute if score #Magic.Rod.Element.Just Datas matches 2 run scoreboard players set #Magic.Rod.Element.UnJust Datas 1
    execute if score #Magic.Rod.Element.Just Datas matches 3 run scoreboard players set #Magic.Rod.Element.UnJust Datas 4
    execute if score #Magic.Rod.Element.Just Datas matches 4 run scoreboard players set #Magic.Rod.Element.UnJust Datas 3