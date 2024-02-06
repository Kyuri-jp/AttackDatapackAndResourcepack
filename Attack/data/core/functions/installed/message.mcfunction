# modify data
    ## error
        execute unless data storage storage:booleans {Main:{Core:{Installed:1b}}} run tellraw @a ["",{"text":"[Error](core:installed/message)","bold":true,"color":"dark_red"},{"text":"データパックの導入に失敗しました (storage:booleans Main.Core.Installed isn't true)"}]
        execute unless data storage storage:booleans {Main:{Core:{Installed:1b}}} run return 0

# checked
    scoreboard players set $attack.core.installed.checked datas 1

# mes
    tellraw @a {"text":"=============================================","color":"gold","bold": true}
    tellraw @a {"text":"Attack!","color":"red","bold": true}
    tellraw @a {"text":"Made by Kyuri\n","color":"green"}
    #tellraw @a {"text":"Moded by [your name]\n","color":"green"}
    tellraw @a [{"text":"Version ","color":"green"},{"nbt":"Main.Sys.Version","storage":"storage:registry","color": "green"}]
    tellraw @a [{"text":"Datapack Version ","color":"aqua"},{"nbt":"Main.Sys.DataPackVersion","storage":"storage:registry","color": "aqua"}]
    tellraw @a [{"text":"Resourcepack Version ","color":"aqua"},{"nbt":"Main.Sys.ResourcePackVersion","storage":"storage:registry","color": "aqua"}]
    tellraw @a {"text":"Datapack License : Creative Commons Zero v1.0","color":"aqua"}
    tellraw @a {"text":"Resource Pack License : MIT License","color":"aqua"}
    tellraw @a {"text":"=============================================","color":"gold","bold": true}