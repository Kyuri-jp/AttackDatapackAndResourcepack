# element
    function systems:weapons/magics/books/un_just

# init
    data modify storage storage:booleans Main.Weapons.Magics.Rods.Shot.Retrun set value false

# get using mp
    execute store result score $attack.using.mp temporary run data get storage storage:settings Main.Weapons.Magics.Rods.UsingMp.Meteor

# mp
    ## lack mp
        execute unless score $attack.counter.magics.rods.scope counter matches 1.. unless score @a[tag=weapons.magics.rods.user,sort=nearest,limit=1] mp >= $attack.using.mp temporary run tellraw @a[tag=weapons.magics.rods.user,sort=nearest,limit=1] {"interpret":true,"nbt":"Main.Weapons.Lack.Mp","storage":"storage:messages"}
        execute unless score $attack.counter.magics.rods.scope counter matches 1.. unless score @a[tag=weapons.magics.rods.user,sort=nearest,limit=1] mp >= $attack.using.mp temporary run kill @s
        execute unless score $attack.counter.magics.rods.scope counter matches 1.. unless score @a[tag=weapons.magics.rods.user,sort=nearest,limit=1] mp >= $attack.using.mp temporary run return 0

    ## enough mp
        execute unless score $attack.counter.magics.rods.scope counter matches 1.. if score @a[tag=weapons.magics.rods.user,sort=nearest,limit=1] mp >= $attack.using.mp temporary run scoreboard players operation @a[tag=weapons.magics.rods.user,sort=nearest,limit=1] mp -= $attack.using.mp temporary
        execute unless score $attack.counter.magics.rods.scope counter matches 1.. if score @a[tag=weapons.magics.rods.user,sort=nearest,limit=1] mp >= $attack.using.mp temporary if score $attack.weapons.magics.rods.elements datas = $attack.magics.rods.elements.just datas as @a[tag=weapons.magics.rods.user,sort=nearest,limit=1] at @s run playsound entity.blaze.shoot player @s ~ ~ ~

    # pros
        ## teleport
            tp ^ ^ ^0.5

        ## vfx
            particle end_rod ~ ~ ~ 0 0 0 0 2 normal
            execute if score $attack.weapons.magics.rods.elements datas = $attack.magics.rods.elements.just datas run particle dust 0 0 0 1 ~ ~ ~ 0.2 0.2 0.2 0.1 10 normal

        ## player detect
            execute if entity @a[distance=0.01..1.5,limit=1,sort=nearest,tag=!weapons.magics.rods.user] run tag @s add attack.magics.rod.detect.player

        ## action
            execute if entity @a[distance=..1.5,limit=1,sort=nearest,tag=!weapons.magics.rods.user] at @a[distance=..1.5,limit=1,sort=nearest,tag=!weapons.magics.rods.user] if entity @a[tag=weapons.magics.rods.user,limit=1,team=redTeam] run summon creeper ~ ~ ~ {Fuse:0,ExplosionRadius:1,CustomName:'{"text": "Meteor"}',Team:redTeam,active_effects:[{id:"minecraft:invisibility",show_particles:false,duration:1}]}
            execute if entity @a[distance=..1.5,limit=1,sort=nearest,tag=!weapons.magics.rods.user] at @a[distance=..1.5,limit=1,sort=nearest,tag=!weapons.magics.rods.user] if entity @a[tag=weapons.magics.rods.user,limit=1,team=blueTeam] run summon creeper ~ ~ ~ {Fuse:0,ExplosionRadius:1,CustomName:'{"text": "Meteor"}',Team:blueTeam,active_effects:[{id:"minecraft:invisibility",show_particles:false,duration:1}]}

        ## hit player
            execute if entity @a[distance=..1.5,limit=1,sort=nearest,tag=!weapons.magics.rods.user] run playsound entity.lightning_bolt.impact player @a[distance=..1.5,limit=1]
            execute if entity @a[distance=..1.5,limit=1,sort=nearest,tag=!weapons.magics.rods.user] at @a[distance=..1.5,limit=1] run particle explosion_emitter ~ ~ ~ 1 1 1 1 3 normal

        ## kill stand(player detect) and can retrun
            execute store success storage storage:booleans Main.Weapons.Magics.Rods.Shot.Retrun byte 1 run kill @s[tag=attack.magics.rod.detect.player]

        ## wall detect and can retrun
            execute unless block ~ ~ ~ #libs:as_air run tag @s add attack.magics.rod.detect.wall
            execute store success storage storage:booleans Main.Weapons.Magics.Rods.Shot.Retrun byte 1 run kill @s[tag=attack.magics.rod.detect.wall]

        ## retrun
            execute if data storage storage:booleans {Main:{Weapons:{Magics:{Rods:{Shot:{Retrun:1b}}}}}} run return 0

        ## counter
            scoreboard players add $attack.counter.magics.rods.scope counter 1

        ## scope over
            execute if score $attack.counter.magics.rods.scope counter >= $attack.magics.rods.scope temporary run kill @s
            execute if score $attack.counter.magics.rods.scope counter >= $attack.magics.rods.scope temporary run return 0

        ## recall
            execute positioned as @s run function systems:weapons/magics/books/actions/meteor
