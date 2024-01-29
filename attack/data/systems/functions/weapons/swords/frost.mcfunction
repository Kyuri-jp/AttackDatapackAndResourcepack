# action
    effect give @s slowness 2 2 false

# vfx
    particle minecraft:block ice ~ ~0.8 ~ 0 0 0 2 500
    playsound minecraft:block.glass.break player @s ~ ~ ~

# revoke
    advancement revoke @s only libs:weapons/swords/frost
