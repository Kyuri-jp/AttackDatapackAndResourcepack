#> libs:synchronize_xp_and_mp/level_over
#
# MPが2048を超えている場合に2048以下になるまで再帰します
#
# @within
#   libs:synchronize_xp_and_mp/level_over
#   libs:synchronize_xp_and_mp/set_level

# set
    xp add @s 2048 levels
    scoreboard players remove $Player.Xp.Level Mp 2048

# recall
    execute unless score $Player.Xp.Level Mp matches 2048.. run function libs:synchronize_xp_and_mp/level_over