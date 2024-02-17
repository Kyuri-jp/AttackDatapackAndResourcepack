# calculate
    scoreboard players operation $xp.percent mp = @s mp
    scoreboard players operation $xp.percent mp *= $constants.value.1000 temporary
    scoreboard players operation $xp.percent mp /= $mp.default.max temporary
    scoreboard players operation $xp.percent mp -= $xp.point mp
    scoreboard players operation $xp.percent mp /= $mp.default.xp.smooth temporary
    scoreboard players operation $xp.point mp += $xp.percent mp