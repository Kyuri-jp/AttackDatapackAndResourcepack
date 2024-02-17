# action
    tp @s @p[distance=0.01..,limit=1]

# vfx
    particle minecraft:dragon_breath ~ ~1 ~ 0 0 0 0.1 500
    playsound minecraft:entity.ender_pearl.throw player @s ~ ~ ~

# revoke
    advancement revoke @s only assets:weapons/swords/magnet
