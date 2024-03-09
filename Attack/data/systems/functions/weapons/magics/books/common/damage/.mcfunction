#> systems:weapons/magics/books/common/damage/
# @within systems:weapons/magics/books/actions/*

#> Temp Holder
#@private
    #declare score_holder $Magic.Shot.Damage.UnJust
    #declare score_holder $Magic.Shot.Damage.UnJust.Remove

# get
    $data merge storage attack:temporary {Magics:{Damage:{Base:$(BaseDamage)}}}

# damage set
    execute store result storage attack:temporary Magics.Damage.Just float 1 run data get storage attack:temporary Magics.Damage.Base 1.2

    execute store result storage attack:temporary Magics.Damage.UnJust float 1 run data get storage attack:temporary Magics.Damage.Base 0.2
    execute store result score $Magic.Shot.Damage.UnJust.Remove Temporary run data get storage attack:temporary Magics.Damage.UnJust 10
    execute store result score $Magic.Shot.Damage.UnJust Temporary run data get storage attack:temporary Magics.Damage.Base 10

    scoreboard players operation $Magic.Shot.Damage.UnJust Temporary -= $Magic.Shot.Damage.UnJust.Remove Temporary

# set macro
    $data modify storage attack:temporary Macro.DamageType set value $(DamageType)
    execute store result storage attack:temporary Macro.BaseDamage float 1 run data get storage attack:temporary Magics.Damage.Base
    execute store result storage attack:temporary Macro.JustDamage float 1 run data get storage attack:temporary Magics.Damage.Just
    execute store result storage attack:temporary Macro.UnJustDamage float 0.1 run scoreboard players get $Magic.Shot.Damage.UnJust Temporary

# give damage
    execute if entity @e[type=#assets:can_give_damage,tag=!Player.Magic.This,distance=0.01..1.5,sort=nearest,limit=1] run function systems:weapons/magics/books/common/damage/give with storage attack:temporary Macro

# reset
    data remove storage attack:temporary Magics.Damage.Base
    data remove storage attack:temporary Magics.Damage.Just
    data remove storage attack:temporary Magics.Damage.UnJust
    data remove storage attack:temporary Magics.Damage.UnJust.Remove
    data remove storage attack:temporary Macro
    scoreboard players reset $Magic.Shot.Damage.UnJust Temporary
    scoreboard players reset $Magic.Shot.Damage.UnJust.Remove Temporary