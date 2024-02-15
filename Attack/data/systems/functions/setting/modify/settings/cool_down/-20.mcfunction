#> systems:setting/modify/settings/cool_down/-20
# @user

# get data -> set value -> change value
    execute store result score $settings.coolTime temporary run data get storage storage:settings Main.Custom.Times.Game.CoolDown 1
    scoreboard players remove $settings.coolTime temporary 20
    execute store result storage storage:settings Main.Custom.Times.Game.CoolDown int 1 run scoreboard players get $settings.coolTime temporary

# reset
    scoreboard players reset $settings.coolTime temporary

# reshow
    function systems:setting/modify/message