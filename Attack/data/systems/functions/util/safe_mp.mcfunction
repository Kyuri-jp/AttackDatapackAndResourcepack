#> systems:util/safe_mp

#> Private
# @private
    #declare score_holder #Magics.Mp.Max

# get data
    execute store result score #Magics.Mp.Max temporary run data get storage storage:registry Main.Weapons.Magics.Mp.Max

# set
    execute if score @s mp > #Magics.Mp.Max temporary run scoreboard players operation @s mp = #Magics.Mp.Max temporary

# reset
    scoreboard players reset #Magics.Mp.Max temporary
