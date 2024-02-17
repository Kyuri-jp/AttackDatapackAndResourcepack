#> systems:weapons/magics/spells/effects/actions/layer_mover/layer_mover_down
# @within systems:weapons/magics/spells/effects/actions/layer_mover/is_on_ground

scoreboard players remove $magics.spells.layerMover counter 1
execute unless block ~ ~-1 ~ #assets:as_air if block ~ ~ ~ #assets:as_air run summon area_effect_cloud ~ ~ ~ {Tags:["weapons.anchor.magics.spells.layerMover"]}
execute unless block ~ ~-1 ~ #assets:as_air if block ~ ~ ~ #assets:as_air run return 0
execute unless block ~ ~-1 ~ #assets:as_air unless block ~ ~ ~ #assets:as_air run loot give @s loot assets:weapons/spells/mana
execute unless block ~ ~-1 ~ #assets:as_air unless block ~ ~ ~ #assets:as_air run scoreboard players set $magics.spells.layerMover counter -1
execute unless block ~ ~-1 ~ #assets:as_air unless block ~ ~ ~ #assets:as_air run return 0
execute if score $magics.spells.layerMover counter matches ..0 run loot give @s loot assets:weapons/spells/mana
execute if score $magics.spells.layerMover counter matches ..0 run return 0
execute positioned ~ ~-1 ~ run function systems:weapons/magics/spells/effects/actions/layer_mover/layer_mover_down