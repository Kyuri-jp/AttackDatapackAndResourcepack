#> core:storage/initialize_storage_datas
#
# Storageをinit処理します
#
# @within core:load/

# init
    data remove storage attack:booleans Main
    data remove storage attack:registry Main
    data remove storage attack:settings Main.Default
    data remove storage attack:settings Main.Weapons
    data remove storage attack:messages Main
    data remove storage psi:storage Main