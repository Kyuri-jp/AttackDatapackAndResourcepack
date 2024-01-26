tag @s add game.coolDownNow
scoreboard players reset @s[scores={deathDetecter=1..},tag=game.coolDownNow] deathDetecter
execute if entity @s[tag=game.players.playing] run function systems:game/died/set_timer