# fixChests
execute at @e[type=armor_stand,tag=game.anchor.set.chest.tire3] run setblock ~ ~ ~ chest{LootTable:"loots:chests/items/tire_3"}
execute at @e[type=armor_stand,tag=game.anchor.set.chest.tire5] run setblock ~ ~ ~ chest{LootTable:"loots:chests/items/tire_5"}

# init
scoreboard players reset $attack.game.count.set.chest counter

# call
function systems:preparation/chests/set/chests/random/set