#> libs:player_item_storage/inventory/summon
# @within
#   libs:player_item_storage/get
#   libs:player_item_storage/inventory/summon

#> Slot
# @private
    #declare score_holder $Pis.Slot

# init
    scoreboard players reset $Pis.Slot temporary

# retrun
    execute unless entity @e[type=armor_stand,tag=Pis.Marker.Here,limit=1] run tellraw @a ["",{"text":"Error>>","bold":true,"color":"dark_red"},{"text": "(libs:player_item_storage/inventory/summon)","color": "dark_red"},{"text":"エンティティが存在しません (not found Pis.Marker.Here)"}]
    execute unless entity @e[type=armor_stand,tag=Pis.Marker.Here,limit=1] run return 0

    execute if data entity @e[type=armor_stand,tag=Pis.Marker.Here,limit=1] {HandItems: [{tag: {Inventory: []}}, {}]} run return 0

    data modify storage psi:storage Slot set from entity @e[type=armor_stand,tag=Pis.Marker.Here,limit=1] HandItems[0].tag.Inventory[0].Slot
    execute store result score $Pis.Slot temporary run data get storage psi:storage Slot

# slot
    execute unless score $Pis.Slot temporary matches -106 unless score $Pis.Slot temporary matches 100..103 run function libs:player_item_storage/inventory/slot/main
    execute if score $Pis.Slot temporary matches -106 run function libs:player_item_storage/inventory/slot/off

    execute if score $Pis.Slot temporary matches 100..103 run function libs:player_item_storage/inventory/slot/armor

# remove data
    data remove entity @e[type=armor_stand,tag=Pis.Marker.Here,limit=1] HandItems[0].tag.Inventory[0]
    data remove storage psi:storage Slot

# recall 
    function libs:player_item_storage/inventory/summon