#> libs:player_item_storage/inventory/summon
#
# アイテムを召喚します
#
# @within
#   libs:player_item_storage/get
#   libs:player_item_storage/inventory/summon

#> Slot
# @private
    #declare score_holder $Pis.Slot

# init
    scoreboard players reset $Pis.Slot Temporary

# return
    execute unless entity @e[type=marker,tag=Pis.Marker.Here,limit=1] run data merge storage error:info {Level: "error", Path: "libs:player_item_storage/inventory/summon", Message: "エンティティが存在しません", StackTrace: "Pis.Marker.Here not found"}
    execute unless entity @e[type=marker,tag=Pis.Marker.Here,limit=1] run return run function api:system/util/error_notice/

    execute if data entity @e[type=marker,tag=Pis.Marker.Here,limit=1] {data: {Inventory:[]}} run return 0

    data modify storage psi:storage Slot set from entity @e[type=marker,tag=Pis.Marker.Here,limit=1] data.Inventory[0].Slot
    execute store result score $Pis.Slot Temporary run data get storage psi:storage Slot

# slot
    execute unless score $Pis.Slot Temporary matches -106 unless score $Pis.Slot Temporary matches 100..103 run function libs:player_item_storage/inventory/slot/main
    execute if score $Pis.Slot Temporary matches -106 run function libs:player_item_storage/inventory/slot/off

    execute if score $Pis.Slot Temporary matches 100..103 run function libs:player_item_storage/inventory/slot/armor

# remove data
    data remove entity @e[type=marker,tag=Pis.Marker.Here,limit=1] data.Inventory[0]
    data remove storage psi:storage Slot

# recall 
    function libs:player_item_storage/inventory/summon