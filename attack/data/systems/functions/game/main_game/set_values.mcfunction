#sounds
execute as @a at @s run playsound block.end_portal.spawn player @s ~ ~ ~

#gamerule and diff
gamerule fallDamage true
difficulty normal

team join redTeam @a[tag=team.red]
team join blueTeam @a[tag=team.blue]
tag @a remove team.red
tag @a remove team.blue

execute store result bossbar attack.game.timer max run scoreboard players get $attack.settings.gameTime Settings
scoreboard players operation $attack.timer.gameTime timer = $attack.settings.gameTime Settings
bossbar set attack.game.timer color green
function systems:game/main_game/start_timer