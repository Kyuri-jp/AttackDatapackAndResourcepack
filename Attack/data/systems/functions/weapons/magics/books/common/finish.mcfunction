# kill stand(player detect) and can return
    execute store success storage storage:booleans Main.Weapons.Magics.Rods.Shot.Retrun byte 1 run kill @s[tag=attack.magics.rod.detect.player]

# wall detect and can return
    execute unless block ~ ~ ~ #libs:as_air run tag @s add attack.magics.rod.detect.wall
    execute store success storage storage:booleans Main.Weapons.Magics.Rods.Shot.Retrun byte 1 run kill @s[tag=attack.magics.rod.detect.wall]

# return
    execute if data storage storage:booleans {Main: {Weapons: {Magics: {Rods: {Shot: {Retrun: 1b}}}}}} run return 0

# counter
    scoreboard players add $attack.counter.magics.rods.scope counter 1

# scope over
    execute if score $attack.counter.magics.rods.scope counter >= $attack.magics.rods.scope temporary run kill @s
    execute if score $attack.counter.magics.rods.scope counter >= $attack.magics.rods.scope temporary run return 0
