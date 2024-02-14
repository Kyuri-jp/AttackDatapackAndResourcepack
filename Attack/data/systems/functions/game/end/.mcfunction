# data set
    data modify storage storage:booleans Main.Game.Playing set value false

# result
    tellraw @a {"text":"========================================","color":"gold"}
    tellraw @a [{"text":"Red Team Score : [","color":"red"},{"score":{"name":"RedTeamScore","objective":"Scores"},"color":"red"},{"text":"]","color":"red"}]
    tellraw @a [{"text":"Blue Team Score : [","color":"blue"},{"score":{"name":"BlueTeamScore","objective":"Scores"},"color":"blue"},{"text":"]","color":"blue"}]
    tellraw @a ""
    execute as @a run tellraw @a ["",{"selector":"@s","bold":true},{"text":" : "},{"text":"[","color":"red"},{"score":{"name":"@s","objective":"killCounter"},"color":"red"},{"text":"]Kill","color":"red"},{"text":" | "},{"text":"[","color":"blue"},{"score":{"name":"@s","objective":"deathCounter"},"color":"blue"},{"text":"]Death","color":"blue"}]
    tellraw @a {"text":"========================================","color":"gold"}

#scores
    schedule clear systems:preparation/bossbar/preparation_time/start_timer
    schedule clear systems:game/main_game/start_timer
    schedule clear systems:game/ex/start_timer
    scoreboard players reset $attack.timer.preparationTime counter
    scoreboard players reset $attack.timer.gameTime counter
    scoreboard players reset $attack.timer.exTime counter

# diff
    difficulty peaceful

# playerReset
    gamemode adventure @a
    scoreboard players reset RedTeamScore Scores
    scoreboard players reset BlueTeamScore Scores
    scoreboard players reset @a
    scoreboard players set @a mp 0
    clear @a
    effect clear @a
    effect give @a instant_health 2 20
    effect give @a saturation 2 20
    execute at @e[type=armor_stand,tag=waitRoom.anchor.default.position] run spawnpoint @a ~ ~ ~
    tag @a remove game.players.playing
    tag @a remove game.coolDownNow

# entities
    kill @e[type=armor_stand,tag=storage.players.items.marker]

# teleport
    tp @a @e[type=armor_stand,tag=waitRoom.anchor.default.position,limit=1]

# bossbars
    bossbar set attack.game.timer visible false
    bossbar set attack.settings.gui.preparation_time players @a
    bossbar set attack.settings.gui.game_time players @a
    bossbar set attack.settings.gui.ex_time players @a
    bossbar set attack.settings.gui.cd_time players @a
    bossbar set attack.settings.gui.preparation_time visible true
    bossbar set attack.settings.gui.game_time visible true
    bossbar set attack.settings.gui.ex_time visible true
    bossbar set attack.settings.gui.cd_time visible true

# setSideBar
    scoreboard objectives setdisplay sidebar TeamList