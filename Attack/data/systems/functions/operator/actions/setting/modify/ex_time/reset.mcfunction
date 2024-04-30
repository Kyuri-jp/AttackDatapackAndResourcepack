#> systems:operator/actions/setting/modify/ex_time/reset
# @user

# get data -> set value
    data modify storage attack:settings Main.Custom.Times.Game.Ex set from storage attack:settings Main.Default.Times.Game.Ex

# reshow
    function systems:operator/actions/setting/modify/message
