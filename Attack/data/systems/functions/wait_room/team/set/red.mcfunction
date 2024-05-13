#> systems:wait_room/team/set/red
#
# RedTeamに参加させます
#
# @within systems:wait_room/team/set/

# sound
    playsound ui.button.click player @s ~ ~ ~

# show message
    tellraw @a ["",{"text":"[System] "},{"selector":"@s"},{"text":" joined "},{"text":"Red Team","color":"red"}]

# set team
    team join RedTeam @s

# reshow scoreboard
    scoreboard objectives setdisplay sidebar TeamList
