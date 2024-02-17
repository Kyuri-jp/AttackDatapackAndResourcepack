# calculate
    scoreboard players operation $SyncMX.Percent mp = @s mp
    scoreboard players operation $SyncMX.Percent mp *= #Const.1000 temporary
    scoreboard players operation $SyncMX.Percent mp /= #Magics.Mp.Max temporary
    scoreboard players operation $SyncMX.Percent mp -= $Player.Xp.Point mp
    scoreboard players operation $SyncMX.Percent mp /= $SyncXM.Bar.Smooth temporary
    scoreboard players operation $Player.Xp.Point mp += $SyncMX.Percent mp