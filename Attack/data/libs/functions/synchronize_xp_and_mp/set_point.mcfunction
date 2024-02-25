#> libs:synchronize_xp_and_mp/set_point
#
# Pointを設定します
#
# @within libs:synchronize_xp_and_mp/

# reset point
    xp set @s 0 points

# set
    execute if score $Player.Xp.Point Mp matches 512.. run xp add @s 512 points
    execute if score $Player.Xp.Point Mp matches 512.. run scoreboard players remove $Player.Xp.Point Mp 512
    execute if score $Player.Xp.Point Mp matches 256.. run xp add @s 256 points
    execute if score $Player.Xp.Point Mp matches 256.. run scoreboard players remove $Player.Xp.Point Mp 256
    execute if score $Player.Xp.Point Mp matches 128.. run xp add @s 128 points
    execute if score $Player.Xp.Point Mp matches 128.. run scoreboard players remove $Player.Xp.Point Mp 128
    execute if score $Player.Xp.Point Mp matches 64.. run xp add @s 64 points
    execute if score $Player.Xp.Point Mp matches 64.. run scoreboard players remove $Player.Xp.Point Mp 64
    execute if score $Player.Xp.Point Mp matches 32.. run xp add @s 32 points
    execute if score $Player.Xp.Point Mp matches 32.. run scoreboard players remove $Player.Xp.Point Mp 32
    execute if score $Player.Xp.Point Mp matches 16.. run xp add @s 16 points
    execute if score $Player.Xp.Point Mp matches 16.. run scoreboard players remove $Player.Xp.Point Mp 16
    execute if score $Player.Xp.Point Mp matches 8.. run xp add @s 8 points
    execute if score $Player.Xp.Point Mp matches 8.. run scoreboard players remove $Player.Xp.Point Mp 8
    execute if score $Player.Xp.Point Mp matches 4.. run xp add @s 4 points
    execute if score $Player.Xp.Point Mp matches 4.. run scoreboard players remove $Player.Xp.Point Mp 4
    execute if score $Player.Xp.Point Mp matches 2.. run xp add @s 2 points
    execute if score $Player.Xp.Point Mp matches 2.. run scoreboard players remove $Player.Xp.Point Mp 2
    execute if score $Player.Xp.Point Mp matches 1.. run xp add @s 1 points
    execute if score $Player.Xp.Point Mp matches 1.. run scoreboard players remove $Player.Xp.Point Mp 1