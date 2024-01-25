# result
tellraw @a ["",{"text":"====================","color":"gold"},{"text":"\n"},{"text":"Red Team Score : [","color":"red"},{"score":{"name":"RedTeamScore","objective":"Scores"},"color":"red"},{"text":"]","color":"red"},{"text":"\n"},{"text":"Blue Team Score : [","color":"blue"},{"score":{"name":"BlueTeamScore","objective":"Scores"},"color":"blue"},{"text":"]","color":"blue"},{"text":"\n"},{"text":"====================","color":"gold"}]

# diff
difficulty peaceful

# playerReset
gamemode adventure @a
scoreboard players reset RedScore Scores
scoreboard players reset BlueScore Scores
scoreboard players reset @a
scoreboard players set @a mp 0
clear @a
effect clear @a
effect give @a instant_health 2 20
effect give @a saturation 2 20
tag @a remove game.players.playing
tag @a remove game.coolDownNow

# teleport
tp @a @e[type=armor_stand,tag=waitRoom.anchor.default.position,limit=1]

# bossbars
bossbar set attack.game.datas visible false
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