execute if predicate libs:photon run effect give @s blindness 5 0 false
execute if predicate libs:photon run effect give @s darkness 5 0 false
execute if predicate libs:photon run effect give @s poison 5 1 false
execute if predicate libs:photon run effect give @s hunger 8 33 false
execute if predicate libs:photon run effect give @s wither 5 2 false
execute if predicate libs:photon run effect give @s weakness 5 1 false
execute if predicate libs:photon run effect give @s glowing 10 0 false

particle minecraft:explosion ~ ~1 ~ 0 0 0 0.5 10
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 0.5
advancement revoke @s only libs:weapons/swords/photon