#air
    execute if score $attack.magics.rods.elements.just datas matches 1 run particle sweep_attack ~ ~ ~ 0.2 0.2 0.2 0.1 5
#dirt
    execute if score $attack.magics.rods.elements.just datas matches 2 run particle block dirt ~ ~ ~ 0.2 0.2 0.2 0.1 10
#fire
    execute if score $attack.magics.rods.elements.just datas matches 3 run particle flame ~ ~ ~ 0.2 0.2 0.2 0.1 5
#water
    execute if score $attack.magics.rods.elements.just datas matches 4 run particle falling_water ~ ~ ~ 0.2 0.2 0.2 0.1 10