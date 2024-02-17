#> systems:weapons/magics/books/un_just
# @within systems:weapons/magics/books/common/

# set
    execute if score #Magic.Rod.Element.Just datas matches 0 run scoreboard players set #Magic.Rod.Element.unJust datas 0
    execute if score #Magic.Rod.Element.Just datas matches 1 run scoreboard players set #Magic.Rod.Element.unJust datas 2
    execute if score #Magic.Rod.Element.Just datas matches 2 run scoreboard players set #Magic.Rod.Element.unJust datas 1
    execute if score #Magic.Rod.Element.Just datas matches 3 run scoreboard players set #Magic.Rod.Element.unJust datas 4
    execute if score #Magic.Rod.Element.Just datas matches 4 run scoreboard players set #Magic.Rod.Element.unJust datas 3