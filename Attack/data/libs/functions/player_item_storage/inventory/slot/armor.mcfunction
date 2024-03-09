#> libs:player_item_storage/inventory/slot/armor
#
# 防具をセットします
#
# @within libs:player_item_storage/inventory/summon

#> Armor Data Anchor
# @private
    #declare tag Pis.Marker.Armor

# get
    data modify storage psi:storage Armor set from entity @e[type=marker,tag=Pis.Marker.Here,limit=1] data.Inventory[0]
    data remove storage psi:storage Armor.Slot

# summon
    summon armor_stand ~ ~ ~ {Marker: true, Invisible: true, Tags: ["Pis.Marker.Armor"]}

# set
    execute if data storage psi:storage {Slot: 100b} as @e[type=armor_stand,tag=Pis.Marker.Armor,limit=1] run data modify entity @s HandItems[1] set from storage psi:storage Armor
    execute if data storage psi:storage {Slot: 101b} as @e[type=armor_stand,tag=Pis.Marker.Armor,limit=1] run data modify entity @s HandItems[1] set from storage psi:storage Armor
    execute if data storage psi:storage {Slot: 102b} as @e[type=armor_stand,tag=Pis.Marker.Armor,limit=1] run data modify entity @s HandItems[1] set from storage psi:storage Armor
    execute if data storage psi:storage {Slot: 103b} as @e[type=armor_stand,tag=Pis.Marker.Armor,limit=1] run data modify entity @s HandItems[1] set from storage psi:storage Armor

    execute if data storage psi:storage {Slot: 100b} run item replace entity @s armor.feet from entity @e[type=armor_stand,tag=Pis.Marker.Armor,limit=1] weapon.offhand
    execute if data storage psi:storage {Slot: 101b} run item replace entity @s armor.legs from entity @e[type=armor_stand,tag=Pis.Marker.Armor,limit=1] weapon.offhand
    execute if data storage psi:storage {Slot: 102b} run item replace entity @s armor.chest from entity @e[type=armor_stand,tag=Pis.Marker.Armor,limit=1] weapon.offhand
    execute if data storage psi:storage {Slot: 103b} run item replace entity @s armor.head from entity @e[type=armor_stand,tag=Pis.Marker.Armor,limit=1] weapon.offhand

# remove
    kill @e[type=armor_stand,tag=Pis.Marker.Armor,limit=1]
    data remove storage psi:storage Armor