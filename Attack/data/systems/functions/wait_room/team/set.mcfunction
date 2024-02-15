#> systems:wait_room/team/set
#
# チーム決め
#
# @within systems:wait_room/team/set

# sound
    execute as @a[team=!redTeam] at @s if entity @e[type=armor_stand,tag=waitRoom.anchor.set.team.red,distance=..2] run playsound ui.button.click player @s ~ ~ ~
    execute as @a[team=!blueTeam] at @s if entity @e[type=armor_stand,tag=waitRoom.anchor.set.team.blue,distance=..2] run playsound ui.button.click player @s ~ ~ ~
    execute as @a[team=!watch] at @s if entity @e[type=armor_stand,tag=waitRoom.anchor.set.team.watch,distance=..2] run playsound ui.button.click player @s ~ ~ ~

# show message
    execute as @a[team=!redTeam] at @s if entity @e[type=armor_stand,tag=waitRoom.anchor.set.team.red,distance=..2] run tellraw @a ["",{"text":"[System] "},{"selector":"@s"},{"text":" joined "},{"text":"Red Team","color":"red"}]
    execute as @a[team=!blueTeam] at @s if entity @e[type=armor_stand,tag=waitRoom.anchor.set.team.blue,distance=..2] run tellraw @a ["",{"text":"[System] "},{"selector":"@s"},{"text":" joined "},{"text":"Blue Team","color":"blue"}]
    execute as @a[team=!watch] at @s if entity @e[type=armor_stand,tag=waitRoom.anchor.set.team.watch,distance=..2] run tellraw @a ["",{"text":"[System] "},{"selector":"@s"},{"text":" joined "},{"text":"Watch Team","color":"gray"}]

# set team
    execute as @a[team=!redTeam] at @s if entity @e[type=armor_stand,tag=waitRoom.anchor.set.team.red,distance=..2] run team join redTeam @s
    execute as @a[team=!blueTeam] at @s if entity @e[type=armor_stand,tag=waitRoom.anchor.set.team.blue,distance=..2] run team join blueTeam @s
    execute as @a[team=!watch] at @s if entity @e[type=armor_stand,tag=waitRoom.anchor.set.team.watch,distance=..2] run team join watch @s
