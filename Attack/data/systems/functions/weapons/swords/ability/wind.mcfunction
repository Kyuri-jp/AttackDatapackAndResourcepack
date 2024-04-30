# action
    summon area_effect_cloud ~ ~ ~ {Radius:0.3f,Duration:6,Age:4,effects:[{amplifier: 100, duration: 2, id: "minecraft:levitation", show_icon: false, show_particles: false}]}

# vfx
    particle sweep_attack ~ ~1 ~ 1 3 1 0.1 20
    playsound block.anvil.destroy player @s ~ ~ ~
    playsound block.anvil.place player @s ~ ~ ~
