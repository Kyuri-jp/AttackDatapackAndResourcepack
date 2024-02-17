# credits
    ## Designed by まっしゅ
    ## About this function ↓
    ## https://youtu.be/Dtn_FQcDF8E

# get data
    execute store result score $mp.default.max temporary run data get storage storage:registry Main.Weapons.Magics.Mp.Max
    execute store result score $mp.default.xp.smooth temporary run data get storage storage:registry Main.Weapons.Magics.Mp.Smooth
    execute store result score $constants.value.1000 temporary run data get storage storage:registry Main.Const.Thousand

# get point
    ## levels reset
        xp set @s 129 levels
    ## get
        execute store result score $xp.point mp run xp query @s points

# calc
    function libs:synchronize_xp_and_mp/calculate

# point
    function libs:synchronize_xp_and_mp/set_point

# level
    function libs:synchronize_xp_and_mp/set_level

# reset
    scoreboard players reset $xp.level mp
    scoreboard players reset $xp.point mp
    scoreboard players reset $xp.percent mp
    scoreboard players reset $constants.value.1000 temporary
    scoreboard players reset $mp.default.max temporary
    scoreboard players reset $mp.default.xp.smooth temporary

# stopsound
    stopsound @a player entity.player.levelup