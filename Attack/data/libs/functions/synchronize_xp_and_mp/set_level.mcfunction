# reset level
    xp set @s 0 levels

# set level
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