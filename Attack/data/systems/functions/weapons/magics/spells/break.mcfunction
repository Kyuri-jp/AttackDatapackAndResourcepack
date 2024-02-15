#> systems:weapons/magics/spells/break
# @within systems:weapons/magics/spells/effects/common/finish

# remove item
    item replace entity @s weapon.mainhand with air

# sound
    playsound entity.item.break player @s ~ ~ ~
