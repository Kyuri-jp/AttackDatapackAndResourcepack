#> systems:operator/actions/setting/modify/settings/cool_down/-20
# @user

# get data -> set value -> change value
    execute store result score $Setting.Time.CoolDown temporary run data get storage attack:settings Main.Custom.Times.Game.CoolDown 1
    scoreboard players remove $Setting.Time.CoolDown temporary 20
    execute store result storage attack:settings Main.Custom.Times.Game.CoolDown int 1 run scoreboard players get $Setting.Time.CoolDown temporary

# reset
    scoreboard players reset $Setting.Time.CoolDown temporary

# reshow
    function systems:operator/actions/setting/modify/message