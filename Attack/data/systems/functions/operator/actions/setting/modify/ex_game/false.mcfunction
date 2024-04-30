#> systems:operator/actions/setting/modify/cool_down/-20
# @user

# get data -> set value
    data modify storage attack:settings Main.Custom.Switch.Ex set value false

# reshow
    function systems:operator/actions/setting/modify/message
