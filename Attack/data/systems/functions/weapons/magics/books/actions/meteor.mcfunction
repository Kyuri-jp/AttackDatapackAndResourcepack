# get using mp
    execute store result score #Magic.UsingMp temporary run data get storage storage:settings Main.Weapons.Magics.Rods.UsingMp.Meteor

# element
    function systems:weapons/magics/books/un_just

# call common pros
    function systems:weapons/magics/books/common/
    execute if score #Magic.Shot.LackMp temporary matches 1 run return 0

# action
    execute if entity @a[tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] at @a[tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] if entity @a[team=redTeam,tag=Player.Magic.This,limit=1] run summon creeper ~ ~ ~ {Fuse: 0, ExplosionRadius: 1, CustomName: '{"text": "Meteor"}', Team: redTeam, ActiveEffects: [{Id: 14, ShowParticles: false, Duration: 1}]}
    execute if entity @a[tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] at @a[tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] if entity @a[team=blueTeam,tag=Player.Magic.This,limit=1] run summon creeper ~ ~ ~ {Fuse: 0, ExplosionRadius: 1, CustomName: '{"text": "Meteor"}', Team: blueTeam, ActiveEffects: [{Id: 14, ShowParticles: false, Duration: 1}]}
    execute if entity @a[tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] at @a[tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] if entity @a[team=blueTeam,tag=Player.Magic.This,limit=1] run damage @a[tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] 8 assets:weapons/magics/books/meteor by @a[tag=Player.Magic.This,limit=1]

# hit player
    execute if entity @a[tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] run playsound entity.lightning_bolt.impact player @a[distance=..1.5,limit=1]
    execute if entity @a[tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] at @a[distance=..1.5,limit=1] run particle explosion_emitter ~ ~ ~ 1 1 1 1 3 normal

# finish
    function systems:weapons/magics/books/common/finish
    execute if data storage storage:booleans {Main: {Weapons: {Magics: {Rods: {Shot: {Retrun: 1b}}}}}} run return 0

# recall
    execute positioned as @s run function systems:weapons/magics/books/actions/meteor