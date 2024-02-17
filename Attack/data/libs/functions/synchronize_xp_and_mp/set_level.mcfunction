# reset level
    xp set @s 0 levels

# set level
    scoreboard players operation $Player.Xp.Level mp = @s mp
    execute if score $Player.Xp.Level mp matches 64.. run xp add @s 64 levels
    execute if score $Player.Xp.Level mp matches 64.. run scoreboard players remove $Player.Xp.Level mp 64
    execute if score $Player.Xp.Level mp matches 32.. run xp add @s 32 levels
    execute if score $Player.Xp.Level mp matches 32.. run scoreboard players remove $Player.Xp.Level mp 32
    execute if score $Player.Xp.Level mp matches 16.. run xp add @s 16 levels
    execute if score $Player.Xp.Level mp matches 16.. run scoreboard players remove $Player.Xp.Level mp 16
    execute if score $Player.Xp.Level mp matches 8.. run xp add @s 8 levels
    execute if score $Player.Xp.Level mp matches 8.. run scoreboard players remove $Player.Xp.Level mp 8
    execute if score $Player.Xp.Level mp matches 4.. run xp add @s 4 levels
    execute if score $Player.Xp.Level mp matches 4.. run scoreboard players remove $Player.Xp.Level mp 4
    execute if score $Player.Xp.Level mp matches 2.. run xp add @s 2 levels
    execute if score $Player.Xp.Level mp matches 2.. run scoreboard players remove $Player.Xp.Level mp 2
    execute if score $Player.Xp.Level mp matches 1.. run xp add @s 1 levels
    execute if score $Player.Xp.Level mp matches 1.. run scoreboard players remove $Player.Xp.Level mp 1