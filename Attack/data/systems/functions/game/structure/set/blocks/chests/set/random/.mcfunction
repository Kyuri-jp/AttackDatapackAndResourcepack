#> systems:game/structure/set/blocks/chests/set/random/
#
# チェストをランダムにセットします
#
# @within
#   systems:game/structure/set/blocks/chests/set/
#   systems:game/structure/set/blocks/chests/set/random/

#> Chest Placer
# @private
    #declare tag Anchor.Chest.Placer
    #declare tag Anchor.Chest.Placer.Base
    #declare tag Anchor.Chest.Placer.1
    #declare tag Anchor.Chest.Placer.2
    #declare tag Anchor.Chest.Placer.3

#> Chest Breaker
# @within
#   systems:game/structure/set/blocks/chests/set/random/
#   systems:game/structure/set/blocks/chests/break/
    #declare tag Anchor.Chest.Break

# return
    execute if score $Structure.Chest.Count Counter matches 720.. run return 0

# turn anchors
    execute as @e[type=armor_stand,tag=Anchor.Chest.Placer.Base,limit=1] at @s run tp @s ~ ~ ~ ~0.5 ~
    execute as @e[type=armor_stand,tag=Anchor.Chest.Placer] run data modify entity @s Rotation set from entity @e[type=armor_stand,tag=Anchor.Chest.Placer.Base,limit=1] Rotation

# set chests
    execute if predicate assets:random_set as @e[type=armor_stand,tag=Anchor.Chest.Placer.1] at @s run setblock ^20 ^ ^ chest{LootTable: "assets:chests/items/tire_1"} keep
    execute if predicate assets:random_set as @e[type=armor_stand,tag=Anchor.Chest.Placer.2] at @s run setblock ^29 ^ ^ chest{LootTable: "assets:chests/items/tire_2"} keep
    execute if predicate assets:random_set as @e[type=armor_stand,tag=Anchor.Chest.Placer.3] at @s run setblock ^19 ^ ^ chest{LootTable: "assets:chests/items/tire_3"} keep

# set anchor
    execute as @e[type=armor_stand,tag=Anchor.Chest.Placer.1] at @s if block ^20 ^ ^ chest{LootTable: "assets:chests/items/tire_1"} positioned ^20 ^ ^ unless entity @e[type=text_display,tag=Anchor.Chest.Break,distance=0.01..3] run summon text_display ~ ~ ~ {Tags: ["Anchor.Chest.Break"]}
    execute as @e[type=armor_stand,tag=Anchor.Chest.Placer.2] at @s if block ^29 ^ ^ chest{LootTable: "assets:chests/items/tire_2"} positioned ^29 ^ ^ unless entity @e[type=text_display,tag=Anchor.Chest.Break,distance=0.01..3] run summon text_display ~ ~ ~ {Tags: ["Anchor.Chest.Break"]}
    execute as @e[type=armor_stand,tag=Anchor.Chest.Placer.3] at @s if block ^19 ^ ^ chest{LootTable: "assets:chests/items/tire_3"} positioned ^19 ^ ^ unless entity @e[type=text_display,tag=Anchor.Chest.Break,distance=0.01..3] run summon text_display ~ ~ ~ {Tags: ["Anchor.Chest.Break"]}

# add count
    scoreboard players add $Structure.Chest.Count Counter 1

# re call
    function systems:game/structure/set/blocks/chests/set/random/