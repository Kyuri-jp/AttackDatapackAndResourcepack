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
    scoreboard players operation $xp.percent mp = @s mp
    scoreboard players operation $xp.percent mp *= $constants.value.1000 temporary
    scoreboard players operation $xp.percent mp /= $mp.default.max temporary
    scoreboard players operation $xp.percent mp -= $xp.point mp
    scoreboard players operation $xp.percent mp /= $mp.default.xp.smooth temporary
    scoreboard players operation $xp.point mp += $xp.percent mp

# point
    xp set @s 0 points
    execute if score $xp.point mp matches 512.. run xp add @s 512 points
    execute if score $xp.point mp matches 512.. run scoreboard players remove $xp.point mp 512
    execute if score $xp.point mp matches 256.. run xp add @s 256 points
    execute if score $xp.point mp matches 256.. run scoreboard players remove $xp.point mp 256
    execute if score $xp.point mp matches 128.. run xp add @s 128 points
    execute if score $xp.point mp matches 128.. run scoreboard players remove $xp.point mp 128
    execute if score $xp.point mp matches 64.. run xp add @s 64 points
    execute if score $xp.point mp matches 64.. run scoreboard players remove $xp.point mp 64
    execute if score $xp.point mp matches 32.. run xp add @s 32 points
    execute if score $xp.point mp matches 32.. run scoreboard players remove $xp.point mp 32
    execute if score $xp.point mp matches 16.. run xp add @s 16 points
    execute if score $xp.point mp matches 16.. run scoreboard players remove $xp.point mp 16
    execute if score $xp.point mp matches 8.. run xp add @s 8 points
    execute if score $xp.point mp matches 8.. run scoreboard players remove $xp.point mp 8
    execute if score $xp.point mp matches 4.. run xp add @s 4 points
    execute if score $xp.point mp matches 4.. run scoreboard players remove $xp.point mp 4
    execute if score $xp.point mp matches 2.. run xp add @s 2 points
    execute if score $xp.point mp matches 2.. run scoreboard players remove $xp.point mp 2
    execute if score $xp.point mp matches 1.. run xp add @s 1 points
    execute if score $xp.point mp matches 1.. run scoreboard players remove $xp.point mp 1

# level
    xp set @s 0 levels
    scoreboard players operation $xp.level mp = @s mp
    execute if score $xp.level mp matches 64.. run xp add @s 64 levels
    execute if score $xp.level mp matches 64.. run scoreboard players remove $xp.level mp 64
    execute if score $xp.level mp matches 32.. run xp add @s 32 levels
    execute if score $xp.level mp matches 32.. run scoreboard players remove $xp.level mp 32
    execute if score $xp.level mp matches 16.. run xp add @s 16 levels
    execute if score $xp.level mp matches 16.. run scoreboard players remove $xp.level mp 16
    execute if score $xp.level mp matches 8.. run xp add @s 8 levels
    execute if score $xp.level mp matches 8.. run scoreboard players remove $xp.level mp 8
    execute if score $xp.level mp matches 4.. run xp add @s 4 levels
    execute if score $xp.level mp matches 4.. run scoreboard players remove $xp.level mp 4
    execute if score $xp.level mp matches 2.. run xp add @s 2 levels
    execute if score $xp.level mp matches 2.. run scoreboard players remove $xp.level mp 2
    execute if score $xp.level mp matches 1.. run xp add @s 1 levels
    execute if score $xp.level mp matches 1.. run scoreboard players remove $xp.level mp 1

# reset
    scoreboard players reset $xp.level mp
    scoreboard players reset $xp.point mp
    scoreboard players reset $xp.percent mp
    scoreboard players reset $constants.value.1000 temporary
    scoreboard players reset $mp.default.max temporary
    scoreboard players reset $mp.default.xp.smooth temporary

# stopsound
    stopsound @a player entity.player.levelup