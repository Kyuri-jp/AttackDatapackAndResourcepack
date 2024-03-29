#> libs:show_player_info/
# 試合に関する情報を表示します

# count mana
    function systems:weapons/magics/spells/count_mana

# show info
    title @s[tag=!Player.CoolDownNow] actionbar ["",{"text":"Kill [","color":"red"},{"score":{"name":"@s","objective":"KillCounter"},"bold":true,"color":"red"},{"text":"]","color":"red"},{"text":" |","color":"gold"},{"text":" Death [","color":"blue"},{"score":{"name":"@s","objective":"DeathCounter"},"bold":true,"color":"blue"},{"text":"]","color":"blue"},{"text":" |","color":"gold"},{"text":" Mana [","color":"dark_purple"},{"score":{"name":"@s","objective":"ManaCounter"},"bold":true,"color":"dark_purple"},{"text":"]","color":"dark_purple"}]
    ## cool down
        execute if entity @s[tag=Player.CoolDownNow] run function libs:show_player_info/get_cool_down_time
        title @s[tag=Player.CoolDownNow] actionbar ["",{"text":"Kill [","color":"red"},{"score":{"name":"@s","objective":"KillCounter"},"bold":true,"color":"red"},{"text":"]","color":"red"},{"text":" |","color":"gold"},{"text":" Death [","color":"blue"},{"score":{"name":"@s","objective":"DeathCounter"},"bold":true,"color":"blue"},{"text":"]","color":"blue"},{"text":" |","color":"gold"},{"text":" Mana [","color":"dark_purple"},{"score":{"name":"@s","objective":"ManaCounter"},"bold":true,"color":"dark_purple"},{"text":"]","color":"dark_purple"},{"text":" Cool Down [","color":"gold"},{"score":{"name":"@s","objective":"Temporary"},"bold":true,"color":"gold"},{"text":"]","color":"gold"}]