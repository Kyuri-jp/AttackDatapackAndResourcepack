execute unless score $attack.core.installed datas matches 1.. run tellraw @a ["",{"text":"[Error]","bold":true,"color":"dark_red"},{"text":"データパックの導入に失敗しました ($attack.core.installed isn't true)"}]
execute unless score $attack.core.installed datas matches 1.. run return 0

scoreboard players set $attack.core.installed.checked datas 1

# mes
tellraw @a {"text":"=============================================","color":"gold","bold": true}
tellraw @a {"text":"Attack!","color":"red"}
tellraw @a {"text":"Made by Kyuri\n","color":"green"}
tellraw @a {"text":"Version 0.0.1","color":"green"}
tellraw @a {"text":"Datapack Version 0.0.0g","color":"aqua"}
tellraw @a {"text":"Datapack License : Creative Commons Zero v1.0","color":"aqua"}
tellraw @a {"text":"Resource Pack License : MIT License","color":"aqua"}
tellraw @a {"text":"=============================================","color":"gold","bold": true}