#gamerule
gamerule doImmediateRespawn true

#bossbar
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

#teams
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

#scores
scoreboard objectives add TeamList dummy
scoreboard objectives add Settings dummy
scoreboard objectives add Scores dummy

scoreboard objectives add useCarrotStick used:carrot_on_a_stick
scoreboard objectives add useFungusStick used:warped_fungus_on_a_stick
scoreboard objectives add detectDeath deathCount
scoreboard objectives add constants dummy
scoreboard objectives add bool dummy
scoreboard objectives add counter dummy
scoreboard objectives add playerCount dummy
scoreboard objectives add defaultSettingValue dummy
scoreboard objectives add timer dummy
scoreboard objectives add random dummy

#setScores
scoreboard players set $attack.constants.timer.sec constants 20
scoreboard players set $attack.constants.value.double constants 2

scoreboard players set $attack.settings.coolTime defaultSettingValue 500
scoreboard players set $attack.settings.gameTime defaultSettingValue 3600
scoreboard players set $attack.settings.preparationTime defaultSettingValue 2400
scoreboard players set $attack.settings.exTime defaultSettingValue 2400
scoreboard players set $attack.settings.exGame defaultSettingValue 1

#setBossbarMaxValue
scoreboard players operation $attack.settings.preparationTime.double defaultSettingValue = $attack.settings.preparationTime defaultSettingValue
scoreboard players operation $attack.settings.gameTime.double defaultSettingValue = $attack.settings.gameTime defaultSettingValue
scoreboard players operation $attack.settings.exTime.double defaultSettingValue = $attack.settings.exTime defaultSettingValue
scoreboard players operation $attack.settings.coolTime.double defaultSettingValue = $attack.settings.coolTime defaultSettingValue

scoreboard players operation $attack.settings.preparationTime.double defaultSettingValue *= $attack.constants.value.double constants
scoreboard players operation $attack.settings.gameTime.double defaultSettingValue *= $attack.constants.value.double constants
scoreboard players operation $attack.settings.exTime.double defaultSettingValue *= $attack.constants.value.double constants
scoreboard players operation $attack.settings.coolTime.double defaultSettingValue *= $attack.constants.value.double constants

execute store result bossbar attack.settings.gui.preparation_time max run scoreboard players get $attack.settings.preparationTime.double defaultSettingValue
execute store result bossbar attack.settings.gui.game_time max run scoreboard players get $attack.settings.gameTime.double defaultSettingValue
execute store result bossbar attack.settings.gui.ex_time max run scoreboard players get $attack.settings.exTime.double defaultSettingValue
execute store result bossbar attack.settings.gui.cd_time max run scoreboard players get $attack.settings.coolTime.double defaultSettingValue

#mes
tellraw @a {"text":"==============================","color":"gold"}
tellraw @a ["",{"text":"[Datapack]"},{"text":"dataPackVersion:0.0.0.dev","bold":true,"color":"gold"}]
tellraw @a {"text":"==============================","color":"gold"}