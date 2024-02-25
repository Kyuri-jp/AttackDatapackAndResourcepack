#> systems:scores/count/killed/add/blues_score
#
# BlueTeamのスコアを加算します
#
# @within advancement assets:killed_blue_team

# add score
    scoreboard players add BlueTeamScore Scores 1

# revoke
    advancement revoke @s only assets:killed_blue_team