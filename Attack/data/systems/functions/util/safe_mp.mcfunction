#> systems:util/safe_mp
#
# MPの整合性をチェックします
#
# @internal

#> Private
# @private
    #declare score_holder #Magics.Mp.Max

# get data
    execute store result score #Magics.Mp.Max Temporary run data get storage attack:registry Main.Weapons.Magics.Mp.Max

# set
    execute if score @s Mp > #Magics.Mp.Max Temporary run scoreboard players operation @s Mp = #Magics.Mp.Max Temporary

# reset
    scoreboard players reset #Magics.Mp.Max Temporary
