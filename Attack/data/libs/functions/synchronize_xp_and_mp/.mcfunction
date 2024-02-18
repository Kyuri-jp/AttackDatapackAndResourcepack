#> libs:synchronize_xp_and_mp/

#> SyncXM
# @within libs:synchronize_xp_and_mp/*
    #declare score_holder #Magics.Mp.Max
    #declare score_holder $SyncXM.Bar.Smooth
    #declare score_holder #Const.1000
    #declare score_holder $Player.Xp.Point
    #declare score_holder $Player.Xp.Level
    #declare score_holder $SyncMX.Percent
    
# credits
    ## Designed by まっしゅ
    ## About this function ↓
    ## https://youtu.be/Dtn_FQcDF8E

# get data
    execute store result score #Magics.Mp.Max temporary run data get storage storage:registry Main.Weapons.Magics.Mp.Max
    execute store result score $SyncXM.Bar.Smooth temporary run data get storage storage:registry Main.Weapons.Magics.Mp.Smooth
    execute store result score #Const.1000 temporary run data get storage storage:registry Main.Const.Thousand

# get point
    ## levels reset
        xp set @s 129 levels
    ## get
        execute store result score $Player.Xp.Point mp run xp query @s points

# calc
    function libs:synchronize_xp_and_mp/calculate

# point
    function libs:synchronize_xp_and_mp/set_point

# level
    function libs:synchronize_xp_and_mp/set_level

# reset
    scoreboard players reset $Player.Xp.Level mp
    scoreboard players reset $Player.Xp.Point mp
    scoreboard players reset $SyncMX.Percent mp
    scoreboard players reset #Const.1000 temporary
    scoreboard players reset #Magics.Mp.Max temporary
    scoreboard players reset $SyncXM.Bar.Smooth temporary

# stopsound
    stopsound @a player entity.player.levelup