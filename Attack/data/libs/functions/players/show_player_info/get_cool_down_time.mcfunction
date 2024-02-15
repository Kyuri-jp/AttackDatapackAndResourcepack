# reset
    scoreboard players reset @s temporary

# get time(tick)
    scoreboard players operation @s temporary = @s coolDownCounter

# get data
    execute store result score $constans.sec temporary run data get storage storage:registry Main.Calculation.Seconds

# to sec.
    scoreboard players operation @s temporary /= $constans.sec temporary

# reset
    scoreboard players reset $constans.sec temporary