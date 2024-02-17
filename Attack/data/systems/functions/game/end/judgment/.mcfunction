# reset
    scoreboard players reset $timer.gameTime counter
    scoreboard players reset $timer.preparationTime counter

# judgement
    ## win red
        execute if score RedTeamScore Scores > BlueTeamScore Scores run title @a title {"text": "Win Red Team!","color": "red"}
    ## win blue
        execute if score RedTeamScore Scores < BlueTeamScore Scores run title @a title {"text": "Win Blue Team!","color": "blue"}
    ## draw
        execute if score RedTeamScore Scores = BlueTeamScore Scores if data storage storage:settings {Main:{Custom:{Switch:{Ex:0b}}}} run title @a title {"text": "Draw...","color": "green"}
        execute if score RedTeamScore Scores = BlueTeamScore Scores if data storage storage:settings {Main:{Custom:{Switch:{Ex:1b}}}} run function systems:game/ex/
  
# non play ex
    execute if data storage storage:settings {Main:{Custom:{Switch:{Ex:1b}}}} run return 0
    execute if data storage storage:settings {Main:{Custom:{Switch:{Ex:0b}}}} run function systems:game/end/