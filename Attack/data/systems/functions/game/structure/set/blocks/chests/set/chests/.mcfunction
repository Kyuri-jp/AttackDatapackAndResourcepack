# set fix chests
    execute at @e[type=armor_stand,tag=game.anchor.set.chest.tire3] run setblock ~ ~ ~ chest{LootTable:"assets:chests/items/tire_3"}
    execute at @e[type=armor_stand,tag=game.anchor.set.chest.tire5] run setblock ~ ~ ~ chest{LootTable:"assets:chests/items/tire_5"}

# init
    scoreboard players reset $game.count.set.chest counter

# call
    function systems:game/structure/set/blocks/chests/set/chests/random/

# reset
    scoreboard players reset $game.count.set.chest counter