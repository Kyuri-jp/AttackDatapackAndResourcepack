#> systems:operator/items/
#
# ボタンを再配置します
#
# @within systems:tick/

#> Operator
# @private
    #declare tag Operator

# set
    item replace entity @a[tag=Operator,tag=!Player.Playing] hotbar.0 with carrot_on_a_stick{display: {Name: '{"text": "Start","color": "green","italic": false}'}, ButtonTag: Start, CustomModelData: 1}
    item replace entity @a[tag=Operator,tag=!Player.Playing] hotbar.1 with carrot_on_a_stick{display: {Name: '{"text": "Setting","color": "gray","italic": false}'}, ButtonTag: Setting, CustomModelData: 2}