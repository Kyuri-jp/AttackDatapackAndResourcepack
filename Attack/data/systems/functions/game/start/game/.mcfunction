#> systems:game/start/game/
#
# ゲームを開始します
#
# @within systems:game/start/

#> Score Holder
# @within
#   systems:game/start/game/
#   systems:game/start/game/set_player_id
    #declare score_holder $Player.ID

#> Tag
# @within
#   systems:game/start/game/
#   systems:game/main_game/
#   systems:game/end/
    #declare tag Player.Team.Red
    #declare tag Player.Team.Blue


# gamemode,rule and diff
    difficulty peaceful
    gamerule fallDamage false
    gamemode adventure @a

# stage reset
    kill @e[type=item]
    kill @e[type=wither_skeleton]

# bossBars
    ## settings
        bossbar set settings.gui.preparation_time visible false
        bossbar set settings.gui.game_time visible false
        bossbar set settings.gui.ex_time visible false
        bossbar set settings.gui.cd_time visible false

    ## timer
        bossbar set main.timer players @a

# initScores,Datas
    ## scores
        scoreboard players set RedTeamScore Scores 0
        scoreboard players set BlueTeamScore Scores 0
        scoreboard players reset $Player.ID PlayerID
    ## Datas
        data modify storage attack:booleans Main.Game.Ex set value false

# initPlayres
    ## set player ID
        execute as @a run function systems:game/start/game/set_player_id

    ## set spawn point
        function systems:game/start/game/set_spawn_point

    ## reset scores
        scoreboard players set @a KillCounter 0
        scoreboard players set @a DeathCounter 0
        scoreboard players reset @a AttackerID

    ## init Mp
        execute store result score @s MpMax run data get storage attack:registry Main.Weapons.Mp.Max
        execute store result score @s Mp run data get storage attack:registry Main.Weapons.Mp.Max

    ## heal
        execute as @a run attribute @s generic.max_health base set 40
        effect give @a instant_health 3 10
        effect give @a saturation 3 10

    ## team flag
        tag @a[team=RedTeam] add Player.Team.Red
        tag @a[team=BlueTeam] add Player.Team.Blue

    ## clear items
        clear @a

    ## set tag
        tag @a add Player.Playing

# watcher
    gamemode spectator @a[team=Watch]
    team join Preparation @a[team=!Watch]

# setSideBar
    scoreboard objectives setdisplay sidebar Scores

# teleport
    data modify entity @e[type=armor_stand,tag=Anchor.DefaultSpawnPoint,limit=1] Rotation set value [90.0f, 0.0f]
    tp @a @e[type=armor_stand,tag=Anchor.DefaultSpawnPoint,limit=1]

# giveItems
    execute as @a run loot give @s loot assets:weapons/spells/get/random_loot_chance

# set flag
    data modify storage attack:booleans Main.Game.Playing set value true

# start game
    function systems:game/preparation/