#> libs:player_item_storage/set
# プレイヤーのInventoryを保存します

#> Common
# @within
#   libs:player_item_storage/**
#   systems:game/end/
    #declare tag Pis.Marker

# summon storage
    summon marker ~ ~ ~ {Tags: ["Pis.Marker"]}

# set data
    data modify entity @e[type=marker,tag=Pis.Marker,distance=..0.01,limit=1] data.Inventory set from entity @s Inventory
    data modify entity @e[type=marker,tag=Pis.Marker,distance=..0.01,limit=1] data.PlayerUUID set from entity @s UUID