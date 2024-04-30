# actions
    execute if predicate assets:items/weapons/swords/random/photon run effect give @s blindness 5 0 false
    execute if predicate assets:items/weapons/swords/random/photon run effect give @s darkness 5 0 false
    execute if predicate assets:items/weapons/swords/random/photon run effect give @s poison 5 1 false
    execute if predicate assets:items/weapons/swords/random/photon run effect give @s hunger 8 3 false
    execute if predicate assets:items/weapons/swords/random/photon run effect give @s wither 5 2 false
    execute if predicate assets:items/weapons/swords/random/photon run effect give @s glowing 10 0 false

# vfx
    particle dust 0 0.741 0.184 1 ~ ~1 ~ 0 0 0 0.5 10
    playsound block.beacon.activate player @s ~ ~ ~ 1 0.5
