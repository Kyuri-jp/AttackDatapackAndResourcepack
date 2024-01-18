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