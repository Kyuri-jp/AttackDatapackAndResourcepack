#> systems:operator/buttons/actions/start
#
# Startボタンを使用した際の処理
#
# @within systems:operator/buttons/used

#> Score Holder
# @within
#   systems:game/start/
#   systems:operator/buttons/actions/start
    #declare score_holder $Timer.GameStart

# reset
    scoreboard players reset @s UseCarrotStick

# api
    function api:player/player_count

# notice
    execute if score $Count.Players Datas = $Count.Players.Red Datas run data merge storage error:info {Level: warn, Path: "systems:operator/buttons/actions/start", Message: "Red Teamのみでゲームを開始しようとしています", StackTrace: "You'll start game with only Red Team."}
    execute if score $Count.Players Datas = $Count.Players.Red Datas run return run function api:system/util/error_notice/

    execute if score $Count.Players Datas = $Count.Players.Blue Datas run data merge storage error:info {Level: warn, Path: "systems:operator/buttons/actions/start", Message: "Blue Teamのみでゲームを開始しようとしています", StackTrace: "You'll start game with only Blue Team."}
    execute if score $Count.Players Datas = $Count.Players.Blue Datas run return run function api:system/util/error_notice/

    execute if score $Count.Players Datas = $Count.Players.Watch Datas run data merge storage error:info {Level: warn, Path: "systems:operator/buttons/actions/start", Message: "観戦者のみでゲームを開始しようとしています", StackTrace: "You'll start game with only watcher."}
    execute if score $Count.Players Datas = $Count.Players.Watch Datas run return run function api:system/util/error_notice/

    execute unless score $Count.Players Datas = $Count.Players.Team Datas run data merge storage error:info {Level: warn, Path: "systems:operator/buttons/actions/start", Message: "チームを選択していないプレイヤーがいます", StackTrace: "There is a player who has not selected a team."}
    execute unless score $Count.Players Datas = $Count.Players.Team Datas run return run function api:system/util/error_notice/

# reset
    scoreboard players set $Timer.GameStart Counter 120
    ## set chests
        function systems:game/structure/set/blocks/chests/

# call
    function systems:game/start/