#> systems:wait_room/team/set
# @within systems:tick/

#> tag
# @within
#   systems:wait_room/team/set
#   systems:wait_room/team/display/set
    #declare tag Anchor.WaitRoom.Team.Red
    #declare tag Anchor.WaitRoom.Team.Blue
    #declare tag Anchor.WaitRoom.Team.Watch

# sound
    execute as @a[team=!redTeam] at @s if entity @e[type=armor_stand,tag=Anchor.WaitRoom.Team.Red,distance=..2] run playsound ui.button.click player @s ~ ~ ~
    execute as @a[team=!blueTeam] at @s if entity @e[type=armor_stand,tag=Anchor.WaitRoom.Team.Blue,distance=..2] run playsound ui.button.click player @s ~ ~ ~
    execute as @a[team=!watch] at @s if entity @e[type=armor_stand,tag=Anchor.WaitRoom.Team.Watch,distance=..2] run playsound ui.button.click player @s ~ ~ ~

# show message
    execute as @a[team=!redTeam] at @s if entity @e[type=armor_stand,tag=Anchor.WaitRoom.Team.Red,distance=..2] run tellraw @a ["",{"text":"[System] "},{"selector":"@s"},{"text":" joined "},{"text":"Red Team","color":"red"}]
    execute as @a[team=!blueTeam] at @s if entity @e[type=armor_stand,tag=Anchor.WaitRoom.Team.Blue,distance=..2] run tellraw @a ["",{"text":"[System] "},{"selector":"@s"},{"text":" joined "},{"text":"Blue Team","color":"blue"}]
    execute as @a[team=!watch] at @s if entity @e[type=armor_stand,tag=Anchor.WaitRoom.Team.Watch,distance=..2] run tellraw @a ["",{"text":"[System] "},{"selector":"@s"},{"text":" joined "},{"text":"Watch Team","color":"gray"}]

# set team
    execute as @a[team=!redTeam] at @s if entity @e[type=armor_stand,tag=Anchor.WaitRoom.Team.Red,distance=..2] run team join redTeam @s
    execute as @a[team=!blueTeam] at @s if entity @e[type=armor_stand,tag=Anchor.WaitRoom.Team.Blue,distance=..2] run team join blueTeam @s
    execute as @a[team=!watch] at @s if entity @e[type=armor_stand,tag=Anchor.WaitRoom.Team.Watch,distance=..2] run team join watch @s
