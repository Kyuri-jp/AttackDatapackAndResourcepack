#> systems:wait_room/team/display/set
# @within core:load/

execute at @e[type=armor_stand,tag=waitRoom.anchor.set.team.red] run summon text_display ~ ~1 ~ {Tags:["display.text.team"],text:'{"interpret":true,"nbt":"Main.WaitRoom.Team.Red","storage": "storage:messages"}'}
execute at @e[type=armor_stand,tag=waitRoom.anchor.set.team.blue] run summon text_display ~ ~1 ~ {Tags:["display.text.team"],text:'{"interpret":true,"nbt":"Main.WaitRoom.Team.Blue","storage": "storage:messages"}'}
execute at @e[type=armor_stand,tag=waitRoom.anchor.set.team.watch] run summon text_display ~ ~1 ~ {Tags:["display.text.team"],text:'{"interpret":true,"nbt":"Main.WaitRoom.Team.Watch","storage": "storage:messages"}'}
execute as @e[type=text_display,tag=display.text.team] at @s run tp @s ~ ~ ~ facing entity @e[type=armor_stand,tag=waitRoom.anchor.default.position,limit=1]