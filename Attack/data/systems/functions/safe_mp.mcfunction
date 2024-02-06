# get data
    execute store result score $attack.mp.default.max temporary run data get storage storage:registry Main.Weapons.Magics.Mp.Max

# set
    execute if score @s mp > $attack.mp.default.max temporary run scoreboard players operation @s mp = $attack.mp.default.max temporary

# reset
    scoreboard players reset $attack.mp.default.max temporary
