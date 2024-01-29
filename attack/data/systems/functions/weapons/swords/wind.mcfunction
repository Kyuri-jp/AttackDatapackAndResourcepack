# action
    summon minecraft:area_effect_cloud ~ ~ ~ {Duration:6,Age:4,Effects:[{Id:25,ShowParticles:false,ShowIcon:false,Duration:2,Amplifier:100}]}

# vfx
    particle minecraft:sweep_attack ~ ~1 ~ 1 3 1 0.1 20
    playsound minecraft:block.anvil.destroy player @s ~ ~ ~

# revoke
    advancement revoke @s only libs:weapons/swords/wind
