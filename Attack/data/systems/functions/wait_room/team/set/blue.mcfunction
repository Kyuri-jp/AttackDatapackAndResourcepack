#> systems:wait_room/team/set/blue
#
# BlueTeamに参加させます
#
# @within systems:wait_room/team/set/

# sound
    playsound ui.button.click player @s ~ ~ ~

# show message
    tellraw @a ["",{"text":"[System] "},{"selector":"@s"},{"text":" joined "},{"text":"Blue Team","color":"blue"}]

# set team
    team join BlueTeam @s
