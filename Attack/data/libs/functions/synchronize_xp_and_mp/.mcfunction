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
    execute store result score #Magics.Mp.Max Temporary run data get storage attack:registry Main.Weapons.Magics.Mp.Max
    execute store result score $SyncXM.Bar.Smooth Temporary run data get storage attack:registry Main.Weapons.Magics.Mp.Smooth
    execute store result score #Const.1000 Temporary run data get storage attack:registry Main.Const.Thousand

# get point
    ## levels reset
        xp set @s 129 levels
    ## get
        execute store result score $Player.Xp.Point Mp run xp query @s points

# calc
    function libs:synchronize_xp_and_mp/calculate

# point
    function libs:synchronize_xp_and_mp/set_point

# level
    function libs:synchronize_xp_and_mp/set_level

# reset
    scoreboard players reset $Player.Xp.Level Mp
    scoreboard players reset $Player.Xp.Point Mp
    scoreboard players reset $SyncMX.Percent Mp
    scoreboard players reset #Const.1000 Temporary
    scoreboard players reset #Magics.Mp.Max Temporary
    scoreboard players reset $SyncXM.Bar.Smooth Temporary

# stopsound
    stopsound @a player entity.player.levelup