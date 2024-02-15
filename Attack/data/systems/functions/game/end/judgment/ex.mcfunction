# reset
    scoreboard players reset $timer.gameTime counter
    scoreboard players reset $timer.preparationTime counter
    scoreboard players reset $timer.exTime counter

# judgement
    ## win red
        execute if score RedTeamScore Scores > BlueTeamScore Scores run title @a title {"text": "Win Red Team!","color": "red"}
    ## win blue
        execute if score RedTeamScore Scores < BlueTeamScore Scores run title @a title {"text": "Win Blue Team!","color": "blue"}
    ## draw
        execute if score RedTeamScore Scores = BlueTeamScore Scores run title @a title {"text": "Draw...","color": "green"}

# end
    function systems:game/end/