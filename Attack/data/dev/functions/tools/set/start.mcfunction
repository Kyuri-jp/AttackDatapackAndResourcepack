function systems:preparation/chests/break/
execute at @e[type=armor_stand,tag=game.anchor.set.chest.tire3] run setblock ~ ~ ~ chest{LootTable:"loots:chests/items/tire_3"}
execute at @e[type=armor_stand,tag=game.anchor.set.chest.tire5] run setblock ~ ~ ~ chest{LootTable:"loots:chests/items/tire_5"}
scoreboard players reset $game.count.set.chest counter
function dev:tools/set/random/set
scoreboard players reset $game.count.set.chest counter