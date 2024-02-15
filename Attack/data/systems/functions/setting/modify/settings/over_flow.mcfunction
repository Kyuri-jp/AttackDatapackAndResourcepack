#> systems:setting/modify/settings/over_flow
# @user
# data get
    execute store result score $attack.settings.gameTime temporary run data get storage storage:settings Main.Custom.Times.Game.MainGame
    execute store result score $attack.settings.preparationTime temporary run data get storage storage:settings Main.Custom.Times.Game.Preparation
    execute store result score $attack.settings.exTime temporary run data get storage storage:settings Main.Custom.Times.Game.Ex
    execute store result score $attack.settings.coolTime temporary run data get storage storage:settings Main.Custom.Times.Game.CoolDown

# check over flow
    ## main game 
    execute if score $attack.settings.gameTime temporary matches ..20 run data modify storage storage:settings Main.Custom.Times.Game.MainGame set value 20
    execute if score $attack.settings.gameTime temporary matches ..20 run data modify storage storage:settings Main.Custom.Times.Game.MainGame set value 20

    ## preparation game 
    execute if score $attack.settings.preparationTime temporary matches ..20 run data modify storage storage:settings Main.Custom.Times.Game.Preparation set value 20
    execute if score $attack.settings.preparationTime temporary matches ..20 run data modify storage storage:settings Main.Custom.Times.Game.Preparation set value 20

    ## ex game 
    execute if score $attack.settings.exTime temporary matches ..20 run data modify storage storage:settings Main.Custom.Times.Game.Ex set value 20
    execute if score $attack.settings.exTime temporary matches ..20 run data modify storage storage:settings Main.Custom.Times.Game.Ex set value 20

    ## cool down 
    execute if score $attack.settings.coolTime temporary matches ..20 run data modify storage storage:settings Main.Custom.Times.Game.CoolDown set value 20
    execute if score $attack.settings.coolTime temporary matches ..20 run data modify storage storage:settings Main.Custom.Times.Game.CoolDown set value 20

# reset
    scoreboard players reset $attack.settings.gameTime temporary
    scoreboard players reset $attack.settings.preparationTime temporary
    scoreboard players reset $attack.settings.exTime temporary
    scoreboard players reset $attack.settings.coolTime temporary