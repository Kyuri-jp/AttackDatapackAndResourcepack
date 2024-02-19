#> systems:operator/actions/setting/modify/settings/cool_down/reset
# @user

# get data -> set value
    data modify storage attack:settings Main.Custom.Times.Game.CoolDown set from storage attack:settings Main.Default.Times.Game.CoolDown

# reshow
    function systems:operator/actions/setting/modify/message
