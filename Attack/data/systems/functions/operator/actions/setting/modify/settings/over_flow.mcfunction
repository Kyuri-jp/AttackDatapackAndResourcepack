#> systems:operator/actions/setting/modify/settings/over_flow
# @user
# data get
    execute store result score $Setting.Time.MainGame temporary run data get storage attack:settings Main.Custom.Times.Game.MainGame
    execute store result score $Setting.Time.Preparation temporary run data get storage attack:settings Main.Custom.Times.Game.Preparation
    execute store result score $Setting.Time.ExGame temporary run data get storage attack:settings Main.Custom.Times.Game.Ex
    execute store result score $Setting.Time.CoolDown temporary run data get storage attack:settings Main.Custom.Times.Game.CoolDown

# check over flow
    ## main game 
    execute if score $Setting.Time.MainGame temporary matches ..20 run data modify storage attack:settings Main.Custom.Times.Game.MainGame set value 20
    execute if score $Setting.Time.MainGame temporary matches ..20 run data modify storage attack:settings Main.Custom.Times.Game.MainGame set value 20

    ## preparation game 
    execute if score $Setting.Time.Preparation temporary matches ..20 run data modify storage attack:settings Main.Custom.Times.Game.Preparation set value 20
    execute if score $Setting.Time.Preparation temporary matches ..20 run data modify storage attack:settings Main.Custom.Times.Game.Preparation set value 20

    ## ex game 
    execute if score $Setting.Time.ExGame temporary matches ..20 run data modify storage attack:settings Main.Custom.Times.Game.Ex set value 20
    execute if score $Setting.Time.ExGame temporary matches ..20 run data modify storage attack:settings Main.Custom.Times.Game.Ex set value 20

    ## cool down 
    execute if score $Setting.Time.CoolDown temporary matches ..20 run data modify storage attack:settings Main.Custom.Times.Game.CoolDown set value 20
    execute if score $Setting.Time.CoolDown temporary matches ..20 run data modify storage attack:settings Main.Custom.Times.Game.CoolDown set value 20

# reset
    scoreboard players reset $Setting.Time.MainGame temporary
    scoreboard players reset $Setting.Time.Preparation temporary
    scoreboard players reset $Setting.Time.ExGame temporary
    scoreboard players reset $Setting.Time.CoolDown temporary