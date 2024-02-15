#> systems:weapons/magics/books/common/
#
# 共通している処理
#
# @within systems:weapons/magics/books/actions/*

# element
    function systems:weapons/magics/books/un_just

# init
    data modify storage storage:booleans Main.Weapons.Magics.Rods.Shot.Retrun set value false

# call
    execute store result score $weapons.magics.books.lackMp temporary run function systems:weapons/magics/books/common/mp