#> systems:operator/buttons/actions/start/rejecter
#
# ゲームの開始を拒否します
#
# @within systems:operator/buttons/actions/start/

# api
    function api:player/player_count

# notice
    execute unless score $Count.Players Datas = $Count.Players.Team Datas run data merge storage error:info {Level: warn, Path: "systems:operator/buttons/actions/start", Message: "チームを選択していないプレイヤーがいます", StackTrace: "There is a player who has not selected a team."}
    execute unless score $Count.Players Datas = $Count.Players.Team Datas run return fail

    execute if score $Count.Players Datas = $Count.Players.Red Datas run data merge storage error:info {Level: warn, Path: "systems:operator/buttons/actions/start", Message: "Red Teamのみでゲームを開始しようとしています", StackTrace: "You'll start game with only Red Team."}
    execute if score $Count.Players Datas = $Count.Players.Red Datas run return fail

    execute if score $Count.Players Datas = $Count.Players.Blue Datas run data merge storage error:info {Level: warn, Path: "systems:operator/buttons/actions/start", Message: "Blue Teamのみでゲームを開始しようとしています", StackTrace: "You'll start game with only Blue Team."}
    execute if score $Count.Players Datas = $Count.Players.Blue Datas run return fail

    execute if score $Count.Players Datas = $Count.Players.Watch Datas run data merge storage error:info {Level: warn, Path: "systems:operator/buttons/actions/start", Message: "観戦者のみでゲームを開始しようとしています", StackTrace: "You'll start game with only watcher."}
    execute if score $Count.Players Datas = $Count.Players.Watch Datas run return fail

    execute if score $Count.Players.Red Datas matches ..0 run data merge storage error:info {Level: warn, Path: "systems:operator/buttons/actions/start", Message: "Red Teamにプレイヤーが1人も加入していません", StackTrace: "Not a single player has joined the Red Team."}
    execute if score $Count.Players.Red Datas matches ..0 run return fail

    execute if score $Count.Players.Blue Datas matches ..0 run data merge storage error:info {Level: warn, Path: "systems:operator/buttons/actions/start", Message: "Blue Teamにプレイヤーが1人も加入していません", StackTrace: "Not a single player has joined the Blue Team."}
    execute if score $Count.Players.Blue Datas matches ..0 run return fail

# return
    return 1
