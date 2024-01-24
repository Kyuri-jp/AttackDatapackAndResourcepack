effect give @s darkness 10 0 false
particle minecraft:dust_color_transition 0 0 0 1 1 1 1 ~ ~0.8 ~ 0 0 0 0.8 200
playsound minecraft:entity.ender_dragon.ambient player @s ~ ~ ~
execute if predicate libs:end run function systems:weapons/swords/additional_damage/end
advancement revoke @s only libs:weapons/swords/end