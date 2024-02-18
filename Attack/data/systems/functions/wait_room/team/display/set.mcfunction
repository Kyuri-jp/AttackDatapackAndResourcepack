#> systems:wait_room/team/display/set
# @within core:load/

execute at @e[type=armor_stand,tag=Anchor.WaitRoom.Team.Red] run summon text_display ~ ~1 ~ {Tags:["Entity.Display.Text.Info.Team"],text:'{"interpret":true,"nbt":"Main.WaitRoom.Team.Red","storage": "storage:messages"}'}
execute at @e[type=armor_stand,tag=Anchor.WaitRoom.Team.Blue] run summon text_display ~ ~1 ~ {Tags:["Entity.Display.Text.Info.Team"],text:'{"interpret":true,"nbt":"Main.WaitRoom.Team.Blue","storage": "storage:messages"}'}
execute at @e[type=armor_stand,tag=Anchor.WaitRoom.Team.Watch] run summon text_display ~ ~1 ~ {Tags:["Entity.Display.Text.Info.Team"],text:'{"interpret":true,"nbt":"Main.WaitRoom.Team.Watch","storage": "storage:messages"}'}

execute as @e[type=text_display,tag=Entity.Display.Text.Info.Team] run data modify entity @s background set value 3223857
execute as @e[type=text_display,tag=Entity.Display.Text.Info.Team] run data modify entity @s billboard set value center