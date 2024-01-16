scoreboard players reset @s useCarrotStick
scoreboard players set $attack.system.start.timer timer 100
function systems:preparation/reset
execute as @a at @s run function systems:game/start/lets