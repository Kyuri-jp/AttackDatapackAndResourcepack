# action
    effect give @s glowing 10 0 false

# vfx
    particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.1 500
    playsound minecraft:ambient.underwater.enter player @s ~ ~ ~

# revoke
    advancement revoke @s only libs:weapons/swords/optical
