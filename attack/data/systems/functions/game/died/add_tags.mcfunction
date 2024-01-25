tag @s add game.coolDownNow
scoreboard players reset @s[scores={datas=1..},tag=game.coolDownNow] datas
function systems:game/died/set_datas