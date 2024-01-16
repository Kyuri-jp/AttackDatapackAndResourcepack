particle minecraft:block blue_ice ~ ~1 ~ 0 0 0 0.1 500
playsound minecraft:block.glass.break player @s ~ ~ ~ 1 1.5
tag @s add weapons.swords.damage.additional_damage.freeze
function systems:weapons/swords/additional_damage/freeze
advancement revoke @s only api:weapons/swords/freeze