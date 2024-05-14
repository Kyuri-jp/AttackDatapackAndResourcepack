#> systems:weapons/magics/books/common/damage/give
# @within systems:weapons/magics/books/common/damage/

# message
    tellraw @a[tag=Debug] {"nbt":"Macro","storage": "attack:temporary"}

# give
    ## normal
        $execute if predicate assets:items/weapons/magics/books/damage/none run damage @e[type=#assets:can_give_damage,tag=!Player.Magic.This,distance=0.01..1.5,sort=nearest,limit=1] $(BaseDamage) assets:weapons/magics/books/$(DamageType) by @a[tag=Player.Magic.This,limit=1]

    ## just
        $execute if predicate assets:items/weapons/magics/books/damage/just run damage @e[type=#assets:can_give_damage,tag=!Player.Magic.This,distance=0.01..1.5,sort=nearest,limit=1] $(JustDamage) assets:weapons/magics/books/$(DamageType) by @a[tag=Player.Magic.This,limit=1]

    ## un just
        $execute if predicate assets:items/weapons/magics/books/damage/un_just run damage @e[type=#assets:can_give_damage,tag=!Player.Magic.This,distance=0.01..1.5,sort=nearest,limit=1] $(UnJustDamage) assets:weapons/magics/books/$(DamageType) by @a[tag=Player.Magic.This,limit=1]