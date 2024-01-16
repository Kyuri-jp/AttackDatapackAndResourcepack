#result
tellraw @a ["",{"text":"====================","color":"gold"},{"text":"\n"},{"text":"Red Team Score : [","color":"red"},{"score":{"name":"RedTeamScore","objective":"Scores"},"color":"red"},{"text":"]","color":"red"},{"text":"\n"},{"text":"Blue Team Score : [","color":"blue"},{"score":{"name":"BlueTeamScore","objective":"Scores"},"color":"blue"},{"text":"]","color":"blue"},{"text":"\n"},{"text":"====================","color":"gold"}]

#playerReset
gamemode adventure @a
scoreboard players reset RedScore Scores
scoreboard players reset BlueScore Scores
scoreboard players reset @a
clear @a
effect clear @a
tag @a remove game.players.playing
tag @a remove game.coolDownNow

#teleport
tp @a @e[type=armor_stand,tag=waitRoom.anchor.default.position,limit=1]

#bossbars
bossbar set attack.game.timer visible false
bossbar set attack.settings.gui.preparation_time players @a
bossbar set attack.settings.gui.game_time players @a
bossbar set attack.settings.gui.ex_time players @a
bossbar set attack.settings.gui.cd_time players @a
bossbar set attack.settings.gui.preparation_time visible true
bossbar set attack.settings.gui.game_time visible true
bossbar set attack.settings.gui.ex_time visible true
bossbar set attack.settings.gui.cd_time visible true

#setSideBar
scoreboard objectives setdisplay sidebar TeamList