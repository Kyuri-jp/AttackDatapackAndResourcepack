#> systems:weapons/magics/spells/effects/actions/layer_mover/is_on_ground
# @within systems:weapons/magics/spells/effects/layer_mover

execute if block ~ ~-1 ~ #assets:as_air run function systems:weapons/magics/spells/effects/actions/layer_mover/layer_mover_down
execute unless block ~ ~-1 ~ #assets:as_air positioned ~ ~-1 ~ run function systems:weapons/magics/spells/effects/actions/layer_mover/layer_mover_down