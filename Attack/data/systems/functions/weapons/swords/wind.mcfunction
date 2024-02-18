# action
    summon area_effect_cloud ~ ~ ~ {Radius:0.3f,Duration:6,Age:4,Effects:[{Amplifier: 100, Duration: 2, Id: 25, ShowIcon: false, ShowParticles: false}]}

# vfx
    particle sweep_attack ~ ~1 ~ 1 3 1 0.1 20
    playsound block.anvil.destroy player @s ~ ~ ~

# revoke
    advancement revoke @s only assets:weapons/swords/wind
