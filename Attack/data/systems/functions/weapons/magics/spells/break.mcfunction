#> systems:weapons/magics/spells/break
# @within systems:weapons/magics/spells/effects/common/finish

# remove item
    item replace entity @s weapon.mainhand with air

# sound
    playsound entity.item.break player @s ~ ~ ~
    playsound item.shield.break player @s ~ ~ ~
    playsound block.beacon.deactivate player @s ~ ~ ~