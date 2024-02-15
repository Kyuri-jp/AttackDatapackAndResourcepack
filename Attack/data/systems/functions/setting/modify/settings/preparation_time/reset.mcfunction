#> systems:setting/modify/settings/preparation_time/reset
# @user

# reset
    data modify storage storage:settings Main.Custom.Times.Game.Preparation set from storage storage:settings Main.Default.Times.Game.Preparation

# reshow
    function systems:setting/modify/message