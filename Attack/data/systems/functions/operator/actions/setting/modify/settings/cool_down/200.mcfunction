#> systems:operator/actions/setting/modify/settings/cool_down/200
# @user

# get data -> set value -> change value
    execute store result score $Setting.Time.CoolDown Temporary run data get storage attack:settings Main.Custom.Times.Game.CoolDown 1
    scoreboard players add $Setting.Time.CoolDown Temporary 200
    execute store result storage attack:settings Main.Custom.Times.Game.CoolDown int 1 run scoreboard players get $Setting.Time.CoolDown Temporary

# reset
    scoreboard players reset $Setting.Time.CoolDown Temporary

# reshow
    function systems:operator/actions/setting/modify/message
