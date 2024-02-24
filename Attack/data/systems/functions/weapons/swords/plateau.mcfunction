# action
    effect give @s weakness 5 2 false

# vfx
    particle block dirt ~ ~1 ~ 0 0 0 0.1 500
    playsound block.grass.break player @s ~ ~ ~
    playsound block.rooted_dirt.break player @s ~ ~ ~

# revoke
    advancement revoke @s only assets:weapons/swords/plateau
