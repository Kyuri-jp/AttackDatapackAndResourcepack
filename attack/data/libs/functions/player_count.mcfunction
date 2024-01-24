#all
scoreboard players reset $attack.scores.count.players.temp playerCount
execute as @a run scoreboard players add $attack.scores.count.players.temp playerCount 1
scoreboard players operation $attack.scores.count.players playerCount = $attack.scores.count.players.temp playerCount

#red
scoreboard players reset $attack.scores.count.players.temp.red playerCount
execute as @a[team=redTeam] run scoreboard players add $attack.scores.count.players.temp.red playerCount 1
scoreboard players operation $attack.scores.count.players.red playerCount = $attack.scores.count.players.temp.red playerCount

#blue
scoreboard players reset $attack.scores.count.players.temp.blue playerCount
execute as @a[team=blueTeam] run scoreboard players add $attack.scores.count.players.temp.blue playerCount 1
scoreboard players operation $attack.scores.count.players.blue playerCount = $attack.scores.count.players.temp.blue playerCount

#watch
scoreboard players reset $attack.scores.count.players.temp.watch playerCount
execute as @a[team=watch] run scoreboard players add $attack.scores.count.players.temp.watch playerCount 1
scoreboard players operation $attack.scores.count.players.watch playerCount = $attack.scores.count.players.temp.watch playerCount