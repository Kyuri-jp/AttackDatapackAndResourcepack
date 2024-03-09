#> api:player/player_count
#
# プレイヤー数,チームのプレイヤー数の取得
#
# @api
# @output
# score $Count.Players Datas
# score $Count.Players.Red Datas
# score $Count.Players.Blue Datas
# score $Count.Players.Watch Datas

#> Score Holder
# @private
    #declare score_holder $Count.Players
    #declare score_holder $Count.Players.Red
    #declare score_holder $Count.Players.Blue
    #declare score_holder $Count.Players.Watch

# all
    execute store result score $Count.Players Datas if entity @a

# red
    execute store result score $Count.Players.Red Datas if entity @a[team=RedTeam]

# blue
    execute store result score $Count.Players.Blue Datas if entity @a[team=BlueTeam]

# watch
    execute store result score $Count.Players.Watch Datas if entity @a[team=Watch]
