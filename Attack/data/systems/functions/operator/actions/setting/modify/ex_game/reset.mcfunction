#> systems:operator/actions/setting/modify/ex_game/reset
# @user

# get data -> set value
    data modify storage attack:settings Main.Custom.Switch.Ex set from storage attack:settings Main.Default.Switch.Ex

# reshow
    function systems:operator/actions/setting/modify/message
