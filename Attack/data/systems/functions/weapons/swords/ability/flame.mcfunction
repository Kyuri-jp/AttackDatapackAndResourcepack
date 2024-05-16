# action
    fill ~1 ~ ~1 ~-1 ~ ~-1 fire[age=15] keep
    execute on attacker run effect give @s fire_resistance 3 0 false

# vfx
    particle small_flame ~ ~ ~ 0 0 0 0.1 500
    playsound entity.blaze.shoot player @s ~ ~ ~
    playsound entity.firework_rocket.blast player @s ~ ~ ~
