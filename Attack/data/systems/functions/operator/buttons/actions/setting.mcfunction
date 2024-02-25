#> systems:operator/buttons/actions/setting
#
# Settingボタンを使用した際の処理
#
# @within systems:operator/buttons/used

# reset
    scoreboard players reset @s UseCarrotStick

# sound
    playsound ui.button.click player @s ~ ~ ~

# call
    function systems:operator/actions/setting/modify/message