#> systems:wait_room/team/set/
# @within systems:tick/as_at

#> tag
# @within
#   systems:wait_room/team/set/
#   systems:wait_room/team/display/set
    #declare tag Anchor.WaitRoom.Team.Red
    #declare tag Anchor.WaitRoom.Team.Blue
    #declare tag Anchor.WaitRoom.Team.Watch

# sound
    execute if entity @s[team=!redTeam] if entity @e[type=armor_stand,tag=Anchor.WaitRoom.Team.Red,distance=..2] run function systems:wait_room/team/set/red
    execute if entity @s[team=!blueTeam] if entity @e[type=armor_stand,tag=Anchor.WaitRoom.Team.Blue,distance=..2] run function systems:wait_room/team/set/blue
    execute if entity @s[team=!watch] if entity @e[type=armor_stand,tag=Anchor.WaitRoom.Team.Watch,distance=..2] run function systems:wait_room/team/set/watch