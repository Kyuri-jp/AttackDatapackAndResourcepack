execute on attacker run tag @s add attack.attacker.eternal
particle minecraft:enchant ~ ~1 ~ 0 0 0 0.1 500
playsound minecraft:block.beacon.activate player @s ~ ~ ~
execute if predicate libs:eternal run function systems:weapons/swords/additional_damage/eternal
advancement revoke @s only libs:weapons/swords/eternal