#> systems:weapons/magics/books/common/damage/give
# @within systems:weapons/magics/books/common/damage/

# give
    ## normal
        $execute unless predicate assets:items/weapons/magics/books/damage/just unless predicate assets:items/weapons/magics/books/damage/un_just run damage @a[tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] $(BaseDamage) $(DamageType) by @a[tag=Player.Magic.This,limit=1]

    ## just
        $execute if predicate assets:items/weapons/magics/books/damage/just run damage @a[tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] $(JustDamage) $(DamageType) by @a[tag=Player.Magic.This,limit=1]

    ## un just
        $execute if score predicate assets:items/weapons/magics/books/damage/un_just run damage @a[tag=!Player.Magic.This,distance=..1.5,sort=nearest,limit=1] $(UnJustDamage) $(DamageType) by @a[tag=Player.Magic.This,limit=1]