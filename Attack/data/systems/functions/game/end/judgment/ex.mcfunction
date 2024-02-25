#> systems:game/end/judgment/ex
#
# Exマッチの場合のジャッジ
#
# @within systems:game/ex/start_timer

# reset
    scoreboard players reset $Timer.MainGame Counter
    scoreboard players reset $Timer.Preparation Counter
    scoreboard players reset $Timer.Ex Counter

# judgement
    ## win red
        execute if score RedTeamScore Scores > BlueTeamScore Scores run title @a title {"text": "Win Red Team!","color": "red"}
    ## win blue
        execute if score RedTeamScore Scores < BlueTeamScore Scores run title @a title {"text": "Win Blue Team!","color": "blue"}
    ## draw
        execute if score RedTeamScore Scores = BlueTeamScore Scores run title @a title {"text": "Draw...","color": "green"}

# end
    function systems:game/end/