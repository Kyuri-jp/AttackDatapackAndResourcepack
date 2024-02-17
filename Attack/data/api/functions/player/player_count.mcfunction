#> api:player/player_count
# @api

#> score holder
# @private
    #declare score_holder $Count.Players
    #declare score_holder $Count.Players.Red
    #declare score_holder $Count.Players.Blue
    #declare score_holder $Count.Players.Watch

# all
    execute store result score $Count.Players datas if entity @a

# red
    execute store result score $Count.Players.Red datas if entity @a[team=redTeam]

# blue
    execute store result score $Count.Players.Blue datas if entity @a[team=blueTeam]

# watch
    execute store result score $Count.Players.Watch datas if entity @a[team=watch]
