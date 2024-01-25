scoreboard players reset $attack.counter.magics.rods.scope counter

execute if predicate libs:items/weapons/magics/books/explosion as @e[type=armor_stand,tag=attack.anchor.magics.rods,sort=nearest,limit=1] at @s run function systems:weapons/magics/books/actions/explosion

tag @s remove attack.weapons.magics.rods.user