#> systems:game/start/game/set_spawn_point
#
# リスポーン地点をセットします
#
# @within systems:game/start/game/

#> Tag
# @private
    #declare tag Anchor.Player.Respawn.Red
    #declare tag Anchor.Player.Respawn.Blue

# set spawn
    execute at @e[type=armor_stand,tag=Anchor.Player.Respawn.Red] run spawnpoint @a[team=RedTeam] ~ ~ ~
    execute at @e[type=armor_stand,tag=Anchor.Player.Respawn.Blue] run spawnpoint @a[team=BlueTeam] ~ ~ ~