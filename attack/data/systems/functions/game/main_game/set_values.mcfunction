# sounds
    execute as @a at @s run playsound block.end_portal.spawn player @s ~ ~ ~

# gamerule and diff
    gamerule fallDamage true
    difficulty normal

# team join
    team join redTeam @a[tag=team.red]
    team join blueTeam @a[tag=team.blue]
    ## tag remove
        tag @a remove team.red
        tag @a remove team.blue

# data get
    execute store result bossbar attack.game.timer max run data get storage storage:settings Main.Custom.Times.Game.MainGame
    execute store result bossbar attack.game.timer value run data get storage storage:settings Main.Custom.Times.Game.MainGame
    execute store result score $attack.timer.gameTime counter run data get storage storage:settings Main.Custom.Times.Game.MainGame

#color change
    bossbar set attack.game.timer color green

# call
function systems:game/main_game/start_timer