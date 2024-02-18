#> systems:weapons/magics/spells/effects/actions/layer_mover/layer_mover_down
# @within
#   systems:weapons/magics/spells/effects/actions/layer_mover/is_on_ground
#   systems:weapons/magics/spells/effects/actions/layer_mover/layer_mover_down

scoreboard players remove #Magic.Spell.LayerMover.Scope counter 1
execute unless block ~ ~-1 ~ #assets:as_air if block ~ ~ ~ #assets:as_air run summon area_effect_cloud ~ ~ ~ {Tags:["Anchor.Magic.Spell.LayerMover"]}
execute unless block ~ ~-1 ~ #assets:as_air if block ~ ~ ~ #assets:as_air run return 0
execute unless block ~ ~-1 ~ #assets:as_air unless block ~ ~ ~ #assets:as_air run loot give @s loot assets:weapons/spells/mana
execute unless block ~ ~-1 ~ #assets:as_air unless block ~ ~ ~ #assets:as_air run scoreboard players set #Magic.Spell.LayerMover.Scope counter -1
execute unless block ~ ~-1 ~ #assets:as_air unless block ~ ~ ~ #assets:as_air run return 0
execute if score #Magic.Spell.LayerMover.Scope counter matches ..0 run loot give @s loot assets:weapons/spells/mana
execute if score #Magic.Spell.LayerMover.Scope counter matches ..0 run return 0
execute positioned ~ ~-1 ~ run function systems:weapons/magics/spells/effects/actions/layer_mover/layer_mover_down