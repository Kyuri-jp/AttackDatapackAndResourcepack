#> libs:synchronize_xp_and_mp/calculate
#
# 割合を計算します
#
# @within libs:synchronize_xp_and_mp/

# calculate
    scoreboard players operation $SyncMX.Percent Mp = @s Mp
    scoreboard players operation $SyncMX.Percent Mp *= #Const.1000 Temporary
    scoreboard players operation $SyncMX.Percent Mp /= #Magics.Mp.Max Temporary
    scoreboard players operation $SyncMX.Percent Mp -= $Player.Xp.Point Mp
    scoreboard players operation $SyncMX.Percent Mp /= $SyncXM.Bar.Smooth Temporary
    scoreboard players operation $Player.Xp.Point Mp += $SyncMX.Percent Mp