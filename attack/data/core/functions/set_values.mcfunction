# setScores
scoreboard players set $attack.constants.datas.sec constants 20
scoreboard players set $attack.constants.value.double constants 2
scoreboard players set $attack.constants.value.1000 constants 1000

scoreboard players set $attack.settings.coolTime constants 500
scoreboard players set $attack.settings.gameTime constants 3600
scoreboard players set $attack.settings.preparationTime constants 2400
scoreboard players set $attack.settings.exTime constants 2400
scoreboard players set $attack.settings.exGame constants 1

scoreboard players set $attack.magics.rods.scope constants 15

# setBossbarMaxValue
scoreboard players operation $attack.settings.preparationTime.double constants = $attack.settings.preparationTime constants
scoreboard players operation $attack.settings.gameTime.double constants = $attack.settings.gameTime constants
scoreboard players operation $attack.settings.exTime.double constants = $attack.settings.exTime constants
scoreboard players operation $attack.settings.coolTime.double constants = $attack.settings.coolTime constants

scoreboard players operation $attack.settings.preparationTime.double constants *= $attack.constants.value.double constants
scoreboard players operation $attack.settings.gameTime.double constants *= $attack.constants.value.double constants
scoreboard players operation $attack.settings.exTime.double constants *= $attack.constants.value.double constants
scoreboard players operation $attack.settings.coolTime.double constants *= $attack.constants.value.double constants