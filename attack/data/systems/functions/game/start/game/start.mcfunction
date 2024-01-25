# gamemode and diff
difficulty peaceful
gamerule fallDamage false

# ui
title @a title "Start!"

# bossBars
bossbar set attack.settings.gui.preparation_time visible false
bossbar set attack.settings.gui.game_time visible false
bossbar set attack.settings.gui.ex_time visible false
bossbar set attack.settings.gui.cd_time visible false
bossbar set attack.game.datas players @a

# initScores
scoreboard players set RedTeamScore Scores 0
scoreboard players set BlueTeamScore Scores 0

# initPlayres
function systems:game/start/set_spawn_point
effect give @a instant_health 3 5
effect give @a saturation 3 5
tag @a[team=redTeam] add team.red
tag @a[team=blueTeam] add team.blue
clear @a
tag @a add game.players.playing
execute as @a run attribute @s generic.max_health base set 40

# watcher
gamemode spectator @a[team=watch]
team join preparation @a[team=!watch]

# setSideBar
scoreboard objectives setdisplay sidebar Scores

# initGame
function systems:preparation/bossbar/preparation_time/set_values

# teleport
data modify entity @e[type=armor_stand,tag=game.anchor.set.spawn,limit=1] Rotation set value [90.0f,0.0f]
tp @a @e[type=armor_stand,tag=game.anchor.set.spawn,limit=1]

# giveItems
execute as @a at @s run loot give @s loot loots:chests/items/tire_1