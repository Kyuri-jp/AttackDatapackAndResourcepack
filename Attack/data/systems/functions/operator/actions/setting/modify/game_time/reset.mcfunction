#> systems:operator/actions/setting/modify/game_time/reset
# @user

# reset
    data modify storage attack:settings Main.Custom.Times.Game.MainGame set from storage attack:settings Main.Default.Times.Game.MainGame

# reshow
    function systems:operator/actions/setting/modify/message