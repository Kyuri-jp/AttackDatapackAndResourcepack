# reset
scoreboard players set $attack.core.installed datas 0
scoreboard players set $attack.core.installed.checked datas 0

# gamerule
gamerule doImmediateRespawn true

# bossbar
bossbar add attack.game.datas {"text":"Time remaining:any seconds"}
bossbar set attack.game.datas color red
bossbar add attack.settings.gui.preparation_time {"text":"Preparation Game Time"}
bossbar set attack.settings.gui.preparation_time color blue
bossbar add attack.settings.gui.game_time {"text":"Main Game Time"}
bossbar set attack.settings.gui.game_time color green
bossbar add attack.settings.gui.ex_time {"text":"Exhibition Game Time"}
bossbar set attack.settings.gui.ex_time color red
bossbar add attack.settings.gui.cd_time {"text":"Cool Down Time"}
bossbar set attack.settings.gui.cd_time color white

# teams
team add redTeam
team add blueTeam
team add watch
team add preparation
team modify redTeam color red
team modify blueTeam color blue
team modify watch color gray
team modify redTeam nametagVisibility hideForOtherTeams
team modify blueTeam nametagVisibility hideForOtherTeams
team modify watch nametagVisibility hideForOtherTeams
team modify preparation friendlyFire false

# scores
scoreboard objectives add TeamList dummy
scoreboard objectives add Settings dummy
scoreboard objectives add Scores dummy
scoreboard objectives add useCarrotStick used:carrot_on_a_stick
scoreboard objectives add useFungusStick used:warped_fungus_on_a_stick
scoreboard objectives add useBow dummy
scoreboard objectives add mp dummy
scoreboard objectives add constants dummy
scoreboard objectives add datas dummy
scoreboard objectives add counter dummy
scoreboard objectives add deathCount deathCount

# set scores
function core:set_values
function core:set_using_mana
function core:set_using_mp

execute store result bossbar attack.settings.gui.preparation_time max run scoreboard players get $attack.settings.preparationTime.double constants
execute store result bossbar attack.settings.gui.game_time max run scoreboard players get $attack.settings.gameTime.double constants
execute store result bossbar attack.settings.gui.ex_time max run scoreboard players get $attack.settings.exTime.double constants
execute store result bossbar attack.settings.gui.cd_time max run scoreboard players get $attack.settings.coolTime.double constants

# end
scoreboard players set $attack.core.installed datas 1
advancement revoke @a only libs:installed