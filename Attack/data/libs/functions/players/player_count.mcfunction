# all
    execute store result score $scores.count.players datas if entity @a

# red
    execute store result score $scores.count.players.red datas if entity @a[team=redTeam]

# blue
    execute store result score $scores.count.players.blue datas if entity @a[team=blueTeam]

# watch
    execute store result score $scores.count.players.watch datas if entity @a[team=watch]
