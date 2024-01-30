execute if block ~ ~ ~ #libs:as_air if block ~ ~1 ~ #libs:as_air run summon area_effect_cloud ~ ~1 ~ {Tags:["attack.anchor.magics.spells.layerMover"]}
execute if block ~ ~ ~ #libs:as_air if block ~ ~1 ~ #libs:as_air run return 0
execute positioned ~ ~1 ~ run function systems:weapons/magics/spells/effects/actions/layer_mover_up
