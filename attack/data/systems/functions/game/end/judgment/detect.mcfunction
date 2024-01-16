execute if score RedTeamScore Scores > BlueTeamScore Scores run title @a title {"text": "Win Red Team!","color": "red"}
execute if score RedTeamScore Scores < BlueTeamScore Scores run title @a title {"text": "Win Blue Team!","color": "blue"}
execute if score $attack.settings.exGame Settings matches 1.. run function systems:game/ex/set_values
execute unless score $attack.settings.exGame Settings matches 1.. if score RedTeamScore Scores = BlueTeamScore Scores run title @a title {"text": "Draw...","color": "green"}

execute unless score $attack.settings.exGame Settings matches 1.. if score RedTeamScore Scores = BlueTeamScore Scores run function systems:game/end/end
execute unless score $attack.settings.exGame Settings matches 1.. if score RedTeamScore Scores > BlueTeamScore Scores run function systems:game/end/end
execute unless score $attack.settings.exGame Settings matches 1.. if score RedTeamScore Scores < BlueTeamScore Scores run function systems:game/end/end