#> systems:operator/actions/setting/modify/preparation_time/reset
# @user

# reset
    data modify storage attack:settings Main.Custom.Times.Game.Preparation set from storage attack:settings Main.Default.Times.Game.Preparation

# reshow
    function systems:operator/actions/setting/modify/message