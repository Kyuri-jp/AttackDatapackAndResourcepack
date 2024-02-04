# summon fireball
    summon minecraft:small_fireball ~ ~ ~0.619 {Motion:[0.0,0.0,-5.0]}

# vfx
    particle minecraft:small_flame ~ ~ ~ 0 0 0 0.1 500
    playsound minecraft:entity.blaze.shoot player @s ~ ~ ~

# revoke
    advancement revoke @s only libs:weapons/swords/flame
