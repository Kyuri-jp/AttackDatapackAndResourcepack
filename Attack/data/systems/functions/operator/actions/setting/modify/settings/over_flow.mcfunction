#> systems:operator/actions/setting/modify/settings/over_flow
#
# 値の整合性をチェックします
#
# @user
# @within systems:operator/actions/setting/modify/message

# data get
    execute store result score $Setting.Time.MainGame Temporary run data get storage attack:settings Main.Custom.Times.Game.MainGame
    execute store result score $Setting.Time.Preparation Temporary run data get storage attack:settings Main.Custom.Times.Game.Preparation
    execute store result score $Setting.Time.ExGame Temporary run data get storage attack:settings Main.Custom.Times.Game.Ex
    execute store result score $Setting.Time.CoolDown Temporary run data get storage attack:settings Main.Custom.Times.Game.CoolDown

# check over flow
    ## main game 
    execute if score $Setting.Time.MainGame Temporary matches ..20 run data modify storage attack:settings Main.Custom.Times.Game.MainGame set value 20
    execute if score $Setting.Time.MainGame Temporary matches ..20 run data modify storage attack:settings Main.Custom.Times.Game.MainGame set value 20

    ## preparation game 
    execute if score $Setting.Time.Preparation Temporary matches ..20 run data modify storage attack:settings Main.Custom.Times.Game.Preparation set value 20
    execute if score $Setting.Time.Preparation Temporary matches ..20 run data modify storage attack:settings Main.Custom.Times.Game.Preparation set value 20

    ## ex game 
    execute if score $Setting.Time.ExGame Temporary matches ..20 run data modify storage attack:settings Main.Custom.Times.Game.Ex set value 20
    execute if score $Setting.Time.ExGame Temporary matches ..20 run data modify storage attack:settings Main.Custom.Times.Game.Ex set value 20

    ## cool down 
    execute if score $Setting.Time.CoolDown Temporary matches ..20 run data modify storage attack:settings Main.Custom.Times.Game.CoolDown set value 20
    execute if score $Setting.Time.CoolDown Temporary matches ..20 run data modify storage attack:settings Main.Custom.Times.Game.CoolDown set value 20

# reset
    scoreboard players reset $Setting.Time.MainGame Temporary
    scoreboard players reset $Setting.Time.Preparation Temporary
    scoreboard players reset $Setting.Time.ExGame Temporary
    scoreboard players reset $Setting.Time.CoolDown Temporary