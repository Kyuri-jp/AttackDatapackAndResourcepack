#> systems:weapons/magics/books/un_just
# @within systems:weapons/magics/books/common/

# set
    execute if score $magics.rods.elements.just datas matches 0 run scoreboard players set $magics.rods.elements.unJust datas 0
    execute if score $magics.rods.elements.just datas matches 1 run scoreboard players set $magics.rods.elements.unJust datas 2
    execute if score $magics.rods.elements.just datas matches 2 run scoreboard players set $magics.rods.elements.unJust datas 1
    execute if score $magics.rods.elements.just datas matches 3 run scoreboard players set $magics.rods.elements.unJust datas 4
    execute if score $magics.rods.elements.just datas matches 4 run scoreboard players set $magics.rods.elements.unJust datas 3