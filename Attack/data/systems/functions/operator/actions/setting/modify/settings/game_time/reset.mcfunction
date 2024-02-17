#> systems:operator/actions/setting/modify/settings/game_time/reset
# @user

# reset
    data modify storage storage:settings Main.Custom.Times.Game.MainGame set from storage storage:settings Main.Default.Times.Game.MainGame

# reshow
    function systems:operator/actions/setting/modify/message