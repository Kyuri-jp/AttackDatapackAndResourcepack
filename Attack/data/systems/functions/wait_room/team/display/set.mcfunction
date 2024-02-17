#> systems:wait_room/team/display/set
# @within core:load/

execute at @e[type=armor_stand,tag=Anchor.WaitRoom.Team.Red] run summon text_display ~ ~1 ~ {Tags:["Entity.Display.Text.Info.Team"],text:'{"interpret":true,"nbt":"Main.WaitRoom.Team.Red","storage": "storage:messages"}'}
execute at @e[type=armor_stand,tag=Anchor.WaitRoom.Team.Blue] run summon text_display ~ ~1 ~ {Tags:["Entity.Display.Text.Info.Team"],text:'{"interpret":true,"nbt":"Main.WaitRoom.Team.Blue","storage": "storage:messages"}'}
execute at @e[type=armor_stand,tag=Anchor.WaitRoom.Team.Watch] run summon text_display ~ ~1 ~ {Tags:["Entity.Display.Text.Info.Team"],text:'{"interpret":true,"nbt":"Main.WaitRoom.Team.Watch","storage": "storage:messages"}'}
execute as @e[type=text_display,tag=Entity.Display.Text.Info.Team] at @s run tp @s ~ ~ ~ facing entity @e[type=armor_stand,tag=Anchor.WaitRoom.DefaultPosition,limit=1]