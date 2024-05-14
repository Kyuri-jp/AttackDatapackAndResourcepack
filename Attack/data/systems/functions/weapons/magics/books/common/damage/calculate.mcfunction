#> systems:weapons/magics/books/common/damage/calculate
#
# ダメージを計算します
#
# @within systems:weapons/magics/books/common/damage/

# calculate
    $execute store result storage attack:temporary Magics.Damage.Just float 1 run data get storage attack:temporary Magics.Damage.Base $(JustDamageRate)

    $execute store result storage attack:temporary Magics.Damage.UnJust float 1 run data get storage attack:temporary Magics.Damage.Base $(UnJustDamageRate)
    execute store result score $Magic.Shot.Damage.UnJust.Remove Temporary run data get storage attack:temporary Magics.Damage.UnJust 10
    execute store result score $Magic.Shot.Damage.UnJust Temporary run data get storage attack:temporary Magics.Damage.Base 10

    scoreboard players operation $Magic.Shot.Damage.UnJust Temporary -= $Magic.Shot.Damage.UnJust.Remove Temporary