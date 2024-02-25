#> systems:game/start/game/set_player_id
#
# プレイヤーの固有IDをセットします
#
# @within systems:game/start/game/
# @output
# score $Player.ID PlayerID
# @writes
# score @s PlayerID

# set
    scoreboard players add $Player.ID PlayerID 1
    scoreboard players operation @s PlayerID = $Player.ID PlayerID