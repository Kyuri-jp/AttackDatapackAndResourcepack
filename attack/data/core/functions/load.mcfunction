# reset
    data modify storage storage:booleans Main.Core.Installed set value 0b
    data modify storage storage:booleans Main.Core.PlayerJoindBeforeInstalled set value 0b

# gamerule
    gamerule doImmediateRespawn true
    gamerule mobGriefing false
    gamerule keepInventory true
    gamerule doMobSpawning false
    gamerule doDaylightCycle false
    gamerule doWeatherCycle false

#time,weather
    time set day
    weather clear

# bossbar
    bossbar add attack.game.timer {"text":"Time remaining:any seconds"}
    bossbar set attack.game.timer color red
    bossbar add attack.settings.gui.preparation_time {"text":"Preparation Game Time"}
    bossbar set attack.settings.gui.preparation_time color blue
    bossbar add attack.settings.gui.game_time {"text":"Main Game Time"}
    bossbar set attack.settings.gui.game_time color green
    bossbar add attack.settings.gui.ex_time {"text":"Exhibition Game Time"}
    bossbar set attack.settings.gui.ex_time color red
    bossbar add attack.settings.gui.cd_time {"text":"Cool Down Time"}
    bossbar set attack.settings.gui.cd_time color white

# teams
    ## create
        team add redTeam
        team add blueTeam
        team add watch
        team add preparation
    ## setting
        team modify redTeam color red
        team modify blueTeam color blue
        team modify watch color gray
        team modify redTeam nametagVisibility hideForOtherTeams
        team modify blueTeam nametagVisibility hideForOtherTeams
        team modify watch nametagVisibility hideForOtherTeams
        team modify preparation friendlyFire false

# scores
    scoreboard objectives add TeamList dummy 
    scoreboard objectives add Scores dummy {"text": "|Scores|","bold": true,"color": "gold"}
    scoreboard objectives add useCarrotStick used:carrot_on_a_stick
    scoreboard objectives add useFungusStick used:warped_fungus_on_a_stick
    scoreboard objectives add useBow dummy
    scoreboard objectives add mp dummy
    scoreboard objectives add temporary dummy
    scoreboard objectives add datas dummy
    scoreboard objectives add scopeOver dummy
    scoreboard objectives add manaCounter dummy
    scoreboard objectives add counter dummy
    scoreboard objectives add coolDownCounter dummy
    scoreboard objectives add deathDetecter deathCount
    scoreboard objectives add killCounter dummy
    scoreboard objectives add deathCounter deathCount

# set scores,storage
    function core:create_storages
    function core:set_values

    execute store result bossbar attack.settings.gui.preparation_time max run data get storage storage:settings Main.Default.Times.Game.Preparation 2
    execute store result bossbar attack.settings.gui.game_time max run data get storage storage:settings Main.Default.Times.Game.MainGame 2
    execute store result bossbar attack.settings.gui.ex_time max run data get storage storage:settings Main.Default.Times.Game.Ex 2
    execute store result bossbar attack.settings.gui.cd_time max run data get storage storage:settings Main.Default.Times.Game.CoolDown 2

# end
    execute store result score $attack.core.installed.checked datas run data get storage storage:booleans Main.Core.PlayerJoindBeforeInstalled
    data modify storage storage:booleans Main.Core.Installed set value 1b
    advancement revoke @a only libs:installed