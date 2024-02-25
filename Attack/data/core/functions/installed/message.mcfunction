#> core:installed/message
#
# インストール完了のメッセージを送信します
#
# @within advancement assets:installed

# modify data
    ## error
        execute unless data storage attack:booleans {Main: {Core: {Installed: 1b}}} run data merge storage error:info {Level: "error", Path: "core:installed/message", Message: "データパックの導入に失敗しました", StackTrace: "attack:booleans Main.Core.Installed is not true."}
        execute unless data storage attack:booleans {Main: {Core: {Installed: 1b}}} run return run function api:system/util/error_notice/
# checked
    scoreboard players set $Core.Installed.Checked Datas 1

# call
    function core:installed/set_displays

# mes
    tellraw @a {"text":"=============================================","color":"gold","bold": true}
    tellraw @a {"text":"Attack!","color":"red","bold": true}
    tellraw @a {"text":"Made by Kyuri\n","color":"green"}
    #tellraw @a {"text":"Moded by [your name]\n","color":"green"}
    tellraw @a [{"text":"Datapack Version ","color":"aqua"},{"nbt":"Main.Sys.DataPackVersion","storage":"attack:registry","color": "aqua"}]
    tellraw @a [{"text":"Resourcepack Version ","color":"aqua"},{"nbt":"Main.Sys.ResourcePackVersion","storage":"attack:registry","color": "aqua"}]
    tellraw @a {"text":"Datapack License : Creative Commons Zero v1.0","color":"aqua"}
    tellraw @a {"text":"Resource Pack License : MIT License","color":"aqua"}
    tellraw @a {"text":"=============================================","color":"gold","bold": true}

# revoke
    advancement revoke @a only assets:installed