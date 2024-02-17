#> systems:operator/actions/setting/modify/settings/ex_time/reset
# @user

# get data -> set value
    data modify storage storage:settings Main.Custom.Times.Game.Ex set from storage storage:settings Main.Default.Times.Game.Ex

# reshow
    function systems:operator/actions/setting/modify/message
