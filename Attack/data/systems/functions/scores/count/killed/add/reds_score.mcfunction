#> systems:scores/count/killed/add/reds_score
#
# RedTeamのスコアを加算します
#
# @within advancement assets:killed_red_team

# add score
    scoreboard players add RedTeamScore Scores 1

# revoke
    advancement revoke @s only assets:killed_red_team