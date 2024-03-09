#> systems:game/structure/set/blocks/pressures/set
#
# 感圧版を設置します
#
# @within systems:game/structure/set/


#> Tag
# @private
    #declare tag Anchor.Pressure.Placer

# replace
    execute as @e[type=armor_stand,tag=Anchor.Pressure.Placer] at @s run setblock ~ ~ ~ dark_oak_pressure_plate keep