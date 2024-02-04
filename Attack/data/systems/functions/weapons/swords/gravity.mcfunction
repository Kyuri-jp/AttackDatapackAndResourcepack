# action
    execute if predicate libs:gravity run tp @s ~ ~-1 ~

# vfx
    particle minecraft:witch ~ ~1 ~ 0 0 0 0.1 500
    playsound minecraft:entity.enderman.teleport player @s ~ ~ ~

# revoke
    advancement revoke @s only libs:weapons/swords/gravity
