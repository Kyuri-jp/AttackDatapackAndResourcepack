#> systems:weapons/magics/spells/break
#
# 呪文を破壊します
#
# @within
#   systems:weapons/magics/spells/effects/common/finish
#   systems:weapons/magics/spells/effects/transaction

# remove item
    item replace entity @s weapon.mainhand with air

# sound
    playsound entity.item.break player @s ~ ~ ~
    playsound item.shield.break player @s ~ ~ ~
    playsound block.beacon.deactivate player @s ~ ~ ~