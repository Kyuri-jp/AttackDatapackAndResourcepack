#> systems:weapons/magics/spells/effects/actions/layer_mover/layer_mover_up
# @within systems:weapons/magics/spells/effects/layer_mover

scoreboard players remove $magics.spells.layerMover counter 1
execute unless block ~ ~ ~ #libs:as_air if block ~ ~1 ~ #libs:as_air run summon area_effect_cloud ~ ~1 ~ {Tags:["weapons.anchor.magics.spells.layerMover"]}
execute unless block ~ ~ ~ #libs:as_air if block ~ ~1 ~ #libs:as_air run return 0
execute unless block ~ ~ ~ #libs:as_air unless block ~ ~1 ~ #libs:as_air run loot give @s loot loots:weapons/spells/mana
execute unless block ~ ~ ~ #libs:as_air unless block ~ ~1 ~ #libs:as_air run scoreboard players set $magics.spells.layerMover counter -1
execute unless block ~ ~ ~ #libs:as_air unless block ~ ~1 ~ #libs:as_air run return 0
execute if score $magics.spells.layerMover counter matches ..0 run loot give @s loot loots:weapons/spells/mana
execute if score $magics.spells.layerMover counter matches ..0 run return 0
execute positioned ~ ~1 ~ run function systems:weapons/magics/spells/effects/actions/layer_mover/layer_mover_up
