# reset point
    xp set @s 0 points

# set
    execute if score $Player.Xp.Point mp matches 512.. run xp add @s 512 points
    execute if score $Player.Xp.Point mp matches 512.. run scoreboard players remove $Player.Xp.Point mp 512
    execute if score $Player.Xp.Point mp matches 256.. run xp add @s 256 points
    execute if score $Player.Xp.Point mp matches 256.. run scoreboard players remove $Player.Xp.Point mp 256
    execute if score $Player.Xp.Point mp matches 128.. run xp add @s 128 points
    execute if score $Player.Xp.Point mp matches 128.. run scoreboard players remove $Player.Xp.Point mp 128
    execute if score $Player.Xp.Point mp matches 64.. run xp add @s 64 points
    execute if score $Player.Xp.Point mp matches 64.. run scoreboard players remove $Player.Xp.Point mp 64
    execute if score $Player.Xp.Point mp matches 32.. run xp add @s 32 points
    execute if score $Player.Xp.Point mp matches 32.. run scoreboard players remove $Player.Xp.Point mp 32
    execute if score $Player.Xp.Point mp matches 16.. run xp add @s 16 points
    execute if score $Player.Xp.Point mp matches 16.. run scoreboard players remove $Player.Xp.Point mp 16
    execute if score $Player.Xp.Point mp matches 8.. run xp add @s 8 points
    execute if score $Player.Xp.Point mp matches 8.. run scoreboard players remove $Player.Xp.Point mp 8
    execute if score $Player.Xp.Point mp matches 4.. run xp add @s 4 points
    execute if score $Player.Xp.Point mp matches 4.. run scoreboard players remove $Player.Xp.Point mp 4
    execute if score $Player.Xp.Point mp matches 2.. run xp add @s 2 points
    execute if score $Player.Xp.Point mp matches 2.. run scoreboard players remove $Player.Xp.Point mp 2
    execute if score $Player.Xp.Point mp matches 1.. run xp add @s 1 points
    execute if score $Player.Xp.Point mp matches 1.. run scoreboard players remove $Player.Xp.Point mp 1