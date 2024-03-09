#> systems:wait_room/team/display/set
#
# 待機場所のTextDisplayをセットします
#
# @within core:installed/set_displays

execute at @e[type=armor_stand,tag=Anchor.WaitRoom.Team.Red] run summon text_display ~ ~1 ~ {Tags:["Entity.Display.Text.Info.Team"],text:'{"interpret":true,"nbt":"Main.WaitRoom.Team.Red","storage": "attack:messages"}'}
execute at @e[type=armor_stand,tag=Anchor.WaitRoom.Team.Blue] run summon text_display ~ ~1 ~ {Tags:["Entity.Display.Text.Info.Team"],text:'{"interpret":true,"nbt":"Main.WaitRoom.Team.Blue","storage": "attack:messages"}'}
execute at @e[type=armor_stand,tag=Anchor.WaitRoom.Team.Watch] run summon text_display ~ ~1 ~ {Tags:["Entity.Display.Text.Info.Team"],text:'{"interpret":true,"nbt":"Main.WaitRoom.Team.Watch","storage": "attack:messages"}'}

execute as @e[type=text_display,tag=Entity.Display.Text.Info.Team] run data modify entity @s billboard set value center
execute as @e[type=text_display,tag=Entity.Display.Text.Info.Team] run data modify entity @s default_background set value true
execute as @e[type=text_display,tag=Entity.Display.Text.Info.Team] run data modify entity @s transformation.scale set value [1.8f,1.8f,1.8f]