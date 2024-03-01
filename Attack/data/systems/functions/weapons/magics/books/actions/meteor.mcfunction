# get using mp
    execute store result score #Magic.UsingMp Temporary run data get storage attack:settings Main.Weapons.Magics.Rods.UsingMp.Meteor

# element
    function systems:weapons/magics/books/un_just

# call common pros
    function systems:weapons/magics/books/common/
    execute if score #Magic.Shot.LackMp Temporary matches 1 run return fail

# action
    execute if entity @e[type=#assets:can_give_damage,tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] at @e[type=#assets:can_give_damage,tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] if entity @a[team=RedTeam,tag=Player.Magic.This,limit=1] run summon creeper ~ ~ ~ {active_effects: [{duration: 1, id: "minecraft:invisibility", show_particles: false}], CustomName: '{"text": "Meteor"}', ExplosionRadius: -1, Fuse: 0, Team: RedTeam}
    execute if entity @e[type=#assets:can_give_damage,tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] at @e[type=#assets:can_give_damage,tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] if entity @a[team=BlueTeam,tag=Player.Magic.This,limit=1] run summon creeper ~ ~ ~ {active_effects: [{duration: 1, id: "minecraft:invisibility", show_particles: false}], CustomName: '{"text": "Meteor"}', ExplosionRadius: -1, Fuse: 0, Team: BlueTeam}

    #damage
    function systems:weapons/magics/books/common/damage/ {"DamageType":"meteor","BaseDamage":12}

# hit player
    execute if entity @e[type=#assets:can_give_damage,tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] run playsound entity.lightning_bolt.impact player @a[distance=..1.5,limit=1]
    execute if entity @e[type=#assets:can_give_damage,tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] at @e[distance=..1.5,limit=1] run particle explosion_emitter ~ ~ ~ 1 1 1 1 3 normal

# finish
    function systems:weapons/magics/books/common/finish
    execute if data storage attack:booleans {Main: {Weapons: {Magics: {Rods: {Shot: {Return: 1b}}}}}} run return 0

# recall
    execute positioned as @s run function systems:weapons/magics/books/actions/meteor