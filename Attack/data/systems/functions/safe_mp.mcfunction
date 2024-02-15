# get data
    execute store result score $mp.default.max temporary run data get storage storage:registry Main.Weapons.Magics.Mp.Max

# set
    execute if score @s mp > $mp.default.max temporary run scoreboard players operation @s mp = $mp.default.max temporary

# reset
    scoreboard players reset $mp.default.max temporary
