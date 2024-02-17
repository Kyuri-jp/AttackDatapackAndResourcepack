# get using mp
    execute store result score $using.mp temporary run data get storage storage:settings Main.Weapons.Magics.Rods.UsingMp.Meteor

# element
    function systems:weapons/magics/books/un_just

# call common pros
    function systems:weapons/magics/books/common/
    execute if score $weapons.magics.books.lackMp temporary matches 1 run return 0

# action
    execute if entity @a[distance=..1.5,limit=1,sort=nearest,tag=!weapons.magics.rods.user] at @a[distance=..1.5,limit=1,sort=nearest,tag=!weapons.magics.rods.user] if entity @a[tag=weapons.magics.rods.user,limit=1,team=redTeam] run summon creeper ~ ~ ~ {Fuse: 0, ExplosionRadius: 1, CustomName: '{"text": "Meteor"}', Team: redTeam, active_effects: [{id: "minecraft:invisibility", show_particles: false, duration: 1}]}
    execute if entity @a[distance=..1.5,limit=1,sort=nearest,tag=!weapons.magics.rods.user] at @a[distance=..1.5,limit=1,sort=nearest,tag=!weapons.magics.rods.user] if entity @a[tag=weapons.magics.rods.user,limit=1,team=blueTeam] run summon creeper ~ ~ ~ {Fuse: 0, ExplosionRadius: 1, CustomName: '{"text": "Meteor"}', Team: blueTeam, active_effects: [{id: "minecraft:invisibility", show_particles: false, duration: 1}]}
    execute if entity @a[distance=..1.5,limit=1,sort=nearest,tag=!weapons.magics.rods.user] at @a[distance=..1.5,limit=1,sort=nearest,tag=!weapons.magics.rods.user] if entity @a[tag=weapons.magics.rods.user,limit=1,team=blueTeam] run damage @a[distance=..1.5,limit=1,sort=nearest,tag=!weapons.magics.rods.user] 8 libs:weapons/magics/books/meteor by @a[tag=weapons.magics.rods.user,limit=1]

# hit player
    execute if entity @a[distance=..1.5,limit=1,sort=nearest,tag=!weapons.magics.rods.user] run playsound entity.lightning_bolt.impact player @a[distance=..1.5,limit=1]
    execute if entity @a[distance=..1.5,limit=1,sort=nearest,tag=!weapons.magics.rods.user] at @a[distance=..1.5,limit=1] run particle explosion_emitter ~ ~ ~ 1 1 1 1 3 normal

# finish
    function systems:weapons/magics/books/common/finish
    execute if data storage storage:booleans {Main: {Weapons: {Magics: {Rods: {Shot: {Retrun: 1b}}}}}} run return 0

# recall
    execute positioned as @s run function systems:weapons/magics/books/actions/meteor