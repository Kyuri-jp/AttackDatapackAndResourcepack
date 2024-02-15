#> systems:setting/modify/settings/ex_game/reset
# @user

# get data -> set value
    data modify storage storage:settings Main.Custom.Switch.Ex set from storage storage:settings Main.Default.Switch.Ex

# reshow
    function systems:setting/modify/message
