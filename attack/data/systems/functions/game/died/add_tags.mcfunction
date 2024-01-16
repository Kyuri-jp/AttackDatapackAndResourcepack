tag @s add game.coolDownNow
scoreboard players reset @s[scores={detectDeath=1..},tag=game.coolDownNow] detectDeath
function systems:game/died/set_timer