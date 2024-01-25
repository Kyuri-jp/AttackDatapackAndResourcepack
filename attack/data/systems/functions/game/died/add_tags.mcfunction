tag @s add game.coolDownNow
scoreboard players reset @s[scores={deathCount=1..},tag=game.coolDownNow] deathCount
execute if entity @s[tag=game.players.playing] run function systems:game/died/set_timer