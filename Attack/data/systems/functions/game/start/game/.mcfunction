# gamemode,rule and diff
    difficulty peaceful
    gamerule fallDamage false
    gamemode adventure @a

# stage reset
    kill @e[type=item]
    kill @e[type=wither_skeleton]

# bossBars
    ## settings
        bossbar set attack.settings.gui.preparation_time visible false
        bossbar set attack.settings.gui.game_time visible false
        bossbar set attack.settings.gui.ex_time visible false
        bossbar set attack.settings.gui.cd_time visible false

    ## timer
        bossbar set attack.game.timer players @a

# initScores,Datas
    ## scores
        scoreboard players set RedTeamScore Scores 0
        scoreboard players set BlueTeamScore Scores 0
        scoreboard players reset $players.ID playerID
    ## datas
        data modify storage storage:booleans Main.Game.Ex set value false

# initPlayres
    ## set player ID
        execute as @a run function systems:game/start/game/set_player_id

    ## set spawn point
        function systems:game/start/game/set_spawn_point

    ## reset scores
        scoreboard players set @a killCounter 0
        scoreboard players set @a deathCounter 0
        scoreboard players reset @a attackerID

    ## init mp
        execute store result score @s mp run data get storage storage:registry Main.Weapons.Mp.Max

    ## heal
        execute as @a run attribute @s generic.max_health base set 40
        effect give @a instant_health 3 10
        effect give @a saturation 3 10

    ## team flag
        tag @a[team=redTeam] add team.red
        tag @a[team=blueTeam] add team.blue

    ## clear items
        clear @a

    ## set tag
        tag @a add game.players.playing

# watcher
    gamemode spectator @a[team=watch]
    team join preparation @a[team=!watch]

# setSideBar
    scoreboard objectives setdisplay sidebar Scores

# teleport
    data modify entity @e[type=armor_stand,tag=game.anchor.set.spawn,limit=1] Rotation set value [90.0f, 0.0f]
    tp @a @e[type=armor_stand,tag=game.anchor.set.spawn,limit=1]

# giveItems
    execute as @a at @s run loot give @s loot assets:chests/items/tire_1

# set flag
    data modify storage storage:booleans Main.Game.Playing set value true

# start game
    function systems:game/preparation/