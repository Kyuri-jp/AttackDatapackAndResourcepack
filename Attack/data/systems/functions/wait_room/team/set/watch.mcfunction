#> systems:wait_room/team/set/watch
#
# Watchに参加させます
#
# @within systems:wait_room/team/set/

# sound
    playsound ui.button.click player @s ~ ~ ~

# show message
    tellraw @a ["",{"text":"[System] "},{"selector":"@s"},{"text":" joined "},{"text":"Watch Team","color":"gray"}]

# set team
    team join Watch @s

# reshow scoreboard
    scoreboard objectives setdisplay sidebar TeamList

