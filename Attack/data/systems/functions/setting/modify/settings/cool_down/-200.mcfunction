#> systems:setting/modify/settings/cool_down/-200
# @user

# get data -> set value -> change value
    execute store result score $attack.settings.coolTime temporary run data get storage storage:settings Main.Custom.Times.Game.CoolDown 1
    scoreboard players remove $attack.settings.coolTime temporary 200
    execute store result storage storage:settings Main.Custom.Times.Game.CoolDown int 1 run scoreboard players get $attack.settings.coolTime temporary

# reset
    scoreboard players reset $attack.settings.coolTime temporary

# reshow
    function systems:setting/modify/message
