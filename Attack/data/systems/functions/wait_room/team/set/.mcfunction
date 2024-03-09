#> systems:wait_room/team/set/
#
# Teamをセットします
#
# @within systems:tick/as_at

#> Tag
# @within
#   systems:wait_room/team/set/
#   systems:wait_room/team/display/set
    #declare tag Anchor.WaitRoom.Team.Red
    #declare tag Anchor.WaitRoom.Team.Blue
    #declare tag Anchor.WaitRoom.Team.Watch

# set
    execute if entity @s[team=!RedTeam] if entity @e[type=armor_stand,tag=Anchor.WaitRoom.Team.Red,distance=..2] run function systems:wait_room/team/set/red
    execute if entity @s[team=!BlueTeam] if entity @e[type=armor_stand,tag=Anchor.WaitRoom.Team.Blue,distance=..2] run function systems:wait_room/team/set/blue
    execute if entity @s[team=!Watch] if entity @e[type=armor_stand,tag=Anchor.WaitRoom.Team.Watch,distance=..2] run function systems:wait_room/team/set/watch

# list
    function systems:scores/list/team/set