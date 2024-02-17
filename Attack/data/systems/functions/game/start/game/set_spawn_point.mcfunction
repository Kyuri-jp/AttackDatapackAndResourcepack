#> systems:game/start/game/set_spawn_point

#> tag
# @private
    #declare tag Anchor.Player.Respawn.Red
    #declare tag Anchor.Player.Respawn.Blue

# set spawn
    execute at @e[type=armor_stand,tag=Anchor.Player.Respawn.Red] run spawnpoint @a[team=redTeam] ~ ~ ~
    execute at @e[type=armor_stand,tag=Anchor.Player.Respawn.Blue] run spawnpoint @a[team=blueTeam] ~ ~ ~