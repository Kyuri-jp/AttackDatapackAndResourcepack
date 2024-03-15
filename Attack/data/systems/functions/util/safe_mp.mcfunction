#> systems:util/safe_mp
#
# MPの整合性をチェックします
#
# @internal

# set
    execute if score @s Mp > @s MpMax run scoreboard players operation @s Mp = @s MpMax