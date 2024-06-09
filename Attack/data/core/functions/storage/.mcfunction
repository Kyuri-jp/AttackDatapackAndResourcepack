#> core:storage/
#
# Storageに値を設定します
#
# @within core:load/

# set Datas
    ## registry
        data merge storage attack:registry {Main: {Calculation: {Seconds: 20, Minutes: 60, Hours: 60}, Const: {Thousand: 1000, Fifty: 50, Two: 2}, Weapons: {Magics: {Mp: {Max: 100, Smooth: 10}}}}}
        data merge storage attack:registry {Main: {Sys: {DataPackVersion: 1.2.0-Beta, ResourcePackVersion: 0.2.0}}}
    
    ## settings
        function core:storage/settings/game
        function core:storage/settings/weapons/

    ## none custom setting
        execute unless data storage attack:settings Main.Custom run function core:storage/copy_default_settings

    ## messages
    #text display
        data merge storage attack:messages {Main: {WaitRoom: {Team: {Blue: '{"text":"Blue Team","bold":true,"color":"blue"}', Red: '{"text":"Red Team","bold":true,"color":"red"}', Watch: '{"text":"Watch Team","bold":true,"color":"gray"}'}}}}