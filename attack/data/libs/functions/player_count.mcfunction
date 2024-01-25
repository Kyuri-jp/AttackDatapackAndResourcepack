# all
scoreboard players reset $attack.scores.count.players.temp datas
execute as @a run scoreboard players add $attack.scores.count.players.temp datas 1
scoreboard players operation $attack.scores.count.players datas = $attack.scores.count.players.temp datas

# red
scoreboard players reset $attack.scores.count.players.temp.red datas
execute as @a[team=redTeam] run scoreboard players add $attack.scores.count.players.temp.red datas 1
scoreboard players operation $attack.scores.count.players.red datas = $attack.scores.count.players.temp.red datas

# blue
scoreboard players reset $attack.scores.count.players.temp.blue datas
execute as @a[team=blueTeam] run scoreboard players add $attack.scores.count.players.temp.blue datas 1
scoreboard players operation $attack.scores.count.players.blue datas = $attack.scores.count.players.temp.blue datas

# watch
scoreboard players reset $attack.scores.count.players.temp.watch datas
execute as @a[team=watch] run scoreboard players add $attack.scores.count.players.temp.watch datas 1
scoreboard players operation $attack.scores.count.players.watch datas = $attack.scores.count.players.temp.watch datas