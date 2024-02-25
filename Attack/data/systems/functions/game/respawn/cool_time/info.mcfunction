#> systems:game/respawn/cool_time/info
#
# クールダウンの情報を表示します
#
# @within systems:game/respawn/cool_time/count_down

# count down
    execute if score @s CoolDownCounter matches 60 run tellraw @s {"text": "3 seconds to respawn...","bold": true,"color": "gold"}
    execute if score @s CoolDownCounter matches 40 run tellraw @s {"text": "2 seconds to respawn...","bold": true,"color": "gold"}
    execute if score @s CoolDownCounter matches 20 run tellraw @s {"text": "1 second to respawn...","bold": true,"color": "gold"}

# sounds
    execute if score @s CoolDownCounter matches 60 run playsound ui.button.click player @s ~ ~ ~ 1 0.4
    execute if score @s CoolDownCounter matches 40 run playsound ui.button.click player @s ~ ~ ~ 1 0.8
    execute if score @s CoolDownCounter matches 20 run playsound ui.button.click player @s ~ ~ ~ 1 1.2