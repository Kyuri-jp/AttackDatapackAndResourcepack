# credits
    ## Designed by まっしゅ
    ## About this function ↓
    ## https://youtu.be/Dtn_FQcDF8E

# get data
    execute store result score $attack.mp.default.max temporary run data get storage storage:registry Main.Weapons.Magics.Mp.Max
    execute store result score $attack.mp.default.xp.smooth temporary run data get storage storage:registry Main.Weapons.Magics.Mp.Smooth
    execute store result score $attack.constants.value.1000 temporary run data get storage storage:registry Main.Const.Thousand

# get point
    ## levels reset
        xp set @s 129 levels
    ## get
    execute store result score $attack.xp.point mp run xp query @s points

# calc
    scoreboard players operation $attack.xp.percent mp = @s mp
    scoreboard players operation $attack.xp.percent mp *= $attack.constants.value.1000 temporary
    scoreboard players operation $attack.xp.percent mp /= $attack.mp.default.max temporary
    scoreboard players operation $attack.xp.percent mp -= $attack.xp.point mp
    scoreboard players operation $attack.xp.percent mp /= $attack.mp.default.xp.smooth temporary
    scoreboard players operation $attack.xp.point mp += $attack.xp.percent mp

# point
    xp set @s 0 points
    execute if score $attack.xp.point mp matches 512.. run xp add @s 512 points
    execute if score $attack.xp.point mp matches 512.. run scoreboard players remove $attack.xp.point mp 512
    execute if score $attack.xp.point mp matches 256.. run xp add @s 256 points
    execute if score $attack.xp.point mp matches 256.. run scoreboard players remove $attack.xp.point mp 256
    execute if score $attack.xp.point mp matches 128.. run xp add @s 128 points
    execute if score $attack.xp.point mp matches 128.. run scoreboard players remove $attack.xp.point mp 128
    execute if score $attack.xp.point mp matches 64.. run xp add @s 64 points
    execute if score $attack.xp.point mp matches 64.. run scoreboard players remove $attack.xp.point mp 64
    execute if score $attack.xp.point mp matches 32.. run xp add @s 32 points
    execute if score $attack.xp.point mp matches 32.. run scoreboard players remove $attack.xp.point mp 32
    execute if score $attack.xp.point mp matches 16.. run xp add @s 16 points
    execute if score $attack.xp.point mp matches 16.. run scoreboard players remove $attack.xp.point mp 16
    execute if score $attack.xp.point mp matches 8.. run xp add @s 8 points
    execute if score $attack.xp.point mp matches 8.. run scoreboard players remove $attack.xp.point mp 8
    execute if score $attack.xp.point mp matches 4.. run xp add @s 4 points
    execute if score $attack.xp.point mp matches 4.. run scoreboard players remove $attack.xp.point mp 4
    execute if score $attack.xp.point mp matches 2.. run xp add @s 2 points
    execute if score $attack.xp.point mp matches 2.. run scoreboard players remove $attack.xp.point mp 2
    execute if score $attack.xp.point mp matches 1.. run xp add @s 1 points
    execute if score $attack.xp.point mp matches 1.. run scoreboard players remove $attack.xp.point mp 1

# level
    xp set @s 0 levels
    scoreboard players operation $attack.xp.level mp = @s mp
    execute if score $attack.xp.level mp matches 64.. run xp add @s 64 levels
    execute if score $attack.xp.level mp matches 64.. run scoreboard players remove $attack.xp.level mp 64
    execute if score $attack.xp.level mp matches 32.. run xp add @s 32 levels
    execute if score $attack.xp.level mp matches 32.. run scoreboard players remove $attack.xp.level mp 32
    execute if score $attack.xp.level mp matches 16.. run xp add @s 16 levels
    execute if score $attack.xp.level mp matches 16.. run scoreboard players remove $attack.xp.level mp 16
    execute if score $attack.xp.level mp matches 8.. run xp add @s 8 levels
    execute if score $attack.xp.level mp matches 8.. run scoreboard players remove $attack.xp.level mp 8
    execute if score $attack.xp.level mp matches 4.. run xp add @s 4 levels
    execute if score $attack.xp.level mp matches 4.. run scoreboard players remove $attack.xp.level mp 4
    execute if score $attack.xp.level mp matches 2.. run xp add @s 2 levels
    execute if score $attack.xp.level mp matches 2.. run scoreboard players remove $attack.xp.level mp 2
    execute if score $attack.xp.level mp matches 1.. run xp add @s 1 levels
    execute if score $attack.xp.level mp matches 1.. run scoreboard players remove $attack.xp.level mp 1

# reset
    scoreboard players reset $attack.xp.level mp
    scoreboard players reset $attack.xp.point mp
    scoreboard players reset $attack.xp.percent mp
    scoreboard players reset $attack.constants.value.1000 temporary
    scoreboard players reset $attack.mp.default.max temporary
    scoreboard players reset $attack.mp.default.xp.smooth temporary

# stopsound
    stopsound @a player entity.player.levelup