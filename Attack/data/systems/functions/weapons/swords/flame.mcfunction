# action
    summon small_fireball ~ ~ ~0.619 {Motion:[0.0,0.0,-5.0]}

# vfx
    particle small_flame ~ ~ ~ 0 0 0 0.1 500
    playsound entity.blaze.shoot player @s ~ ~ ~
    playsound entity.firework_rocket.blast player @s ~ ~ ~

# revoke
    advancement revoke @s only assets:weapons/swords/flame
