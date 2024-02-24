#> systems:wait_room/team/set/watch
# @within systems:wait_room/team/set/

# sound
    playsound ui.button.click player @s ~ ~ ~

# show message
    tellraw @a ["",{"text":"[System] "},{"selector":"@s"},{"text":" joined "},{"text":"Watch Team","color":"gray"}]

# set team
    team join watch @s
