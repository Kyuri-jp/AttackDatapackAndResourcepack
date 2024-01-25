execute unless score $attack.core.installed datas matches 1.. run tellraw @a ["",{"text":"[Error]","bold":true,"color":"dark_red"},{"text":"データパックの導入に失敗しました ($attack.core.installed isn't true)"}]
execute unless score $attack.core.installed datas matches 1.. run return 0

execute if score $attack.core.installed.checked datas matches 1.. run return 0
scoreboard players set $attack.core.installed.checked datas 1
# mes
tellraw @a {"text":"==============================","color":"gold"}
tellraw @a ["",{"text":"[Datapack]"},{"text":"dataPackVersion:0.0.0.dev","bold":true,"color":"gold"}]
tellraw @a {"text":"==============================","color":"gold"}