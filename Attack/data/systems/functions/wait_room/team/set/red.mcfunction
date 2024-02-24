#> systems:wait_room/team/set/red
# @within systems:wait_room/team/set/

# sound
    playsound ui.button.click player @s ~ ~ ~

# show message
    tellraw @a ["",{"text":"[System] "},{"selector":"@s"},{"text":" joined "},{"text":"Red Team","color":"red"}]

# set team
    team join redTeam @s
