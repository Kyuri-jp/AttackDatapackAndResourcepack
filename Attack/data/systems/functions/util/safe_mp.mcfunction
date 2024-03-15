#> systems:util/safe_mp
#
# MPの整合性をチェックします
#
# @internal

# max
    execute if score @s MpMax matches 0 store result score @s MpMax run data get storage attack:registry Main.Weapons.Magics.Mp.Max

# set
    execute if score @s Mp > @s MpMax run scoreboard players operation @s Mp = @s MpMax