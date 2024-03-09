#> systems:game/structure/set/blocks/chests/set/
# チェストを配置します

#> Score Holder
# @within
#   systems:game/structure/set/blocks/chests/set/
#   systems:game/structure/set/blocks/chests/set/random/
    #declare score_holder $Structure.Chest.Count

#> Tag
# @within systems:game/structure/set/blocks/chests/**
    #declare tag Anchor.Chest.Tire1
    #declare tag Anchor.Chest.Tire2
    #declare tag Anchor.Chest.Tire3
    #declare tag Anchor.Chest.Tire4
    #declare tag Anchor.Chest.Tire5

# set fix chests
    execute at @e[type=armor_stand,tag=Anchor.Chest.Tire4] run setblock ~ ~ ~ chest{LootTable:"assets:chests/items/tire_4"}
    execute at @e[type=armor_stand,tag=Anchor.Chest.Tire5] run setblock ~ ~ ~ chest{LootTable:"assets:chests/items/tire_5"}

# init
    scoreboard players reset $Structure.Chest.Count Counter

# call
    function systems:game/structure/set/blocks/chests/set/random/

# reset
    scoreboard players reset $Structure.Chest.Count Counter