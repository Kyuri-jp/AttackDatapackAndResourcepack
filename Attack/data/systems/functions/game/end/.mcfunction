#> systems:game/end/
#
# ゲームを終了します
#
# @within
#   systems:game/end/judgment/*

# data set
    data modify storage attack:booleans Main.Game.Playing set value false

# result
    tellraw @a {"text":"========================================","color":"gold"}
    tellraw @a [{"text":"Red Team Score : [","color":"red"},{"score":{"name":"RedTeamScore","objective":"Scores"},"color":"red"},{"text":"]","color":"red"}]
    tellraw @a [{"text":"Blue Team Score : [","color":"blue"},{"score":{"name":"BlueTeamScore","objective":"Scores"},"color":"blue"},{"text":"]","color":"blue"}]
    tellraw @a ""
    execute as @a[team=!Watch] run tellraw @a ["",{"selector":"@s","bold":true},{"text":" : "},{"text":"[","color":"red"},{"score":{"name":"@s","objective":"KillCounter"},"color":"red"},{"text":"]Kill","color":"red"},{"text":" | "},{"text":"[","color":"blue"},{"score":{"name":"@s","objective":"DeathCounter"},"color":"blue"},{"text":"]Death","color":"blue"}]
    tellraw @a {"text":"========================================","color":"gold"}

#scores
    schedule clear systems:game/preparation/start_timer
    schedule clear systems:game/main_game/start_timer
    schedule clear systems:game/ex/start_timer
    scoreboard players reset $Timer.Preparation Counter
    scoreboard players reset $Timer.MainGame Counter
    scoreboard players reset $Timer.Ex Counter
    scoreboard objectives remove TeamList
    scoreboard objectives add TeamList dummy {"text": "|Teams|","bold": true,"color": "gold"}

# diff
    difficulty peaceful

# playerReset
    gamemode adventure @a
    scoreboard players reset RedTeamScore Scores
    scoreboard players reset BlueTeamScore Scores
    scoreboard players reset @a
    execute store result score @s MpMax run data get storage attack:registry Main.Weapons.Mp.Max
    execute store result score @s Mp run data get storage attack:registry Main.Weapons.Mp.Max
    clear @a
    effect clear @a
    effect give @a instant_health 2 20
    effect give @a saturation 2 20
    execute at @e[type=armor_stand,tag=Anchor.WaitRoom.DefaultPosition] run spawnpoint @a ~ ~ ~
    tag @a remove Player.Playing
    tag @a remove Player.CoolDownNow
    team leave @a[team=Preparation]
    team join RedTeam @a[tag=Player.Team.Red]
    team join BlueTeam @a[tag=Player.Team.Blue]

# entities
    kill @e[type=armor_stand,tag=Pis.Marker]

# teleport
    tp @a @e[type=armor_stand,tag=Anchor.WaitRoom.DefaultPosition,limit=1]

# bossbars
    bossbar set main.timer visible false
    bossbar set settings.gui.preparation_time players @a
    bossbar set settings.gui.game_time players @a
    bossbar set settings.gui.ex_time players @a
    bossbar set settings.gui.cd_time players @a
    bossbar set settings.gui.preparation_time visible true
    bossbar set settings.gui.game_time visible true
    bossbar set settings.gui.ex_time visible true
    bossbar set settings.gui.cd_time visible true

# setSideBar
    scoreboard objectives setdisplay sidebar TeamList