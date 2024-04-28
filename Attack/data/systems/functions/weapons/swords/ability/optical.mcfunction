# action
    effect give @s glowing 10 0 false

# vfx
    particle end_rod ~ ~1 ~ 0 0 0 0.1 500
    playsound block.beacon.activate player @s ~ ~ ~
    playsound block.beacon.deactivate player @s ~ ~ ~

# revoke
    advancement revoke @s only assets:weapons/swords/optical
