#> libs:synchronize_xp_and_mp/set_level
#
# Levelの値を設定します
#
# @within libs:synchronize_xp_and_mp/
# @reads
# score @s Mp

# reset level
    xp set @s 0 levels

# set level
    scoreboard players operation $Player.Xp.Level Mp = @s Mp
    execute if score $Player.Xp.Level Mp matches 2048.. run function libs:synchronize_xp_and_mp/level_over
    execute if score $Player.Xp.Level Mp matches 1024.. run xp add @s 1024 levels
    execute if score $Player.Xp.Level Mp matches 1024.. run scoreboard players remove $Player.Xp.Level Mp 1024
    execute if score $Player.Xp.Level Mp matches 512.. run xp add @s 512 levels
    execute if score $Player.Xp.Level Mp matches 512.. run scoreboard players remove $Player.Xp.Level Mp 512
    execute if score $Player.Xp.Level Mp matches 256.. run xp add @s 256 levels
    execute if score $Player.Xp.Level Mp matches 256.. run scoreboard players remove $Player.Xp.Level Mp 256
    execute if score $Player.Xp.Level Mp matches 128.. run xp add @s 128 levels
    execute if score $Player.Xp.Level Mp matches 128.. run scoreboard players remove $Player.Xp.Level Mp 128
    execute if score $Player.Xp.Level Mp matches 64.. run xp add @s 64 levels
    execute if score $Player.Xp.Level Mp matches 64.. run scoreboard players remove $Player.Xp.Level Mp 64
    execute if score $Player.Xp.Level Mp matches 32.. run xp add @s 32 levels
    execute if score $Player.Xp.Level Mp matches 32.. run scoreboard players remove $Player.Xp.Level Mp 32
    execute if score $Player.Xp.Level Mp matches 16.. run xp add @s 16 levels
    execute if score $Player.Xp.Level Mp matches 16.. run scoreboard players remove $Player.Xp.Level Mp 16
    execute if score $Player.Xp.Level Mp matches 8.. run xp add @s 8 levels
    execute if score $Player.Xp.Level Mp matches 8.. run scoreboard players remove $Player.Xp.Level Mp 8
    execute if score $Player.Xp.Level Mp matches 4.. run xp add @s 4 levels
    execute if score $Player.Xp.Level Mp matches 4.. run scoreboard players remove $Player.Xp.Level Mp 4
    execute if score $Player.Xp.Level Mp matches 2.. run xp add @s 2 levels
    execute if score $Player.Xp.Level Mp matches 2.. run scoreboard players remove $Player.Xp.Level Mp 2
    execute if score $Player.Xp.Level Mp matches 1.. run xp add @s 1 levels
    execute if score $Player.Xp.Level Mp matches 1.. run scoreboard players remove $Player.Xp.Level Mp 1