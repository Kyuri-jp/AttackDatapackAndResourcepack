#> systems:operator/items/buttons
# @within systems:tick/

# set
    item replace entity @a[tag=operator,tag=!Player.Playing] hotbar.0 with carrot_on_a_stick{display: {Name: '{"text": "Start","color": "green","italic": false}'}, ButtonTag: Start, CustomModelData: 1}
    item replace entity @a[tag=operator,tag=!Player.Playing] hotbar.1 with carrot_on_a_stick{display: {Name: '{"text": "Setting","color": "gray","italic": false}'}, ButtonTag: Setting, CustomModelData: 2}