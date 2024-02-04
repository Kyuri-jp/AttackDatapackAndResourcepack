# action
    effect give @s poison 4 0 false

# vfx
    particle minecraft:effect ~ ~ ~ 0 0 0 0.1 500
    playsound minecraft:block.brewing_stand.brew player @s ~ ~ ~

# revoke
    advancement revoke @s only libs:weapons/swords/poison
