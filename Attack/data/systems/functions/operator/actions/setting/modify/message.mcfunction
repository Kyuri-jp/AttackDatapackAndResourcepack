#> systems:operator/actions/setting/modify/message
#
# メッセージを表示します
#
# @within
#   systems:operator/actions/setting/modify/**
#   systems:operator/buttons/actions/setting

#> Time
# @within systems:operator/actions/setting/modify/**
    #declare score_holder $Setting.Time.MainGame
    #declare score_holder $Setting.Time.Preparation
    #declare score_holder $Setting.Time.ExGame
    #declare score_holder $Setting.Time.CoolDown

# show empty
    function systems:operator/actions/setting/empty

# check over flow
    function systems:operator/actions/setting/modify/over_flow

# set gui bar
    function systems:scores/gui_bars/settings/reload

# show messages
    tellraw @s ["",{"text":"Respawn CoolDown","color":"gold"},{"text":" : ["},{"nbt":"Main.Custom.Times.Game.CoolDown","storage":"attack:settings"},{"text":"] "},{"text":"[+20]","color":"red","clickEvent":{"action":"run_command","value":"/function systems:operator/actions/setting/modify/cool_down/20"}},{"text":" ","color":"red"},{"text":"[+200]","color":"red","clickEvent":{"action":"run_command","value":"/function systems:operator/actions/setting/modify/cool_down/200"}},{"text":" "},{"text":"[-20]","color":"blue","clickEvent":{"action":"run_command","value":"/function systems:operator/actions/setting/modify/cool_down/-20"}},{"text":" ","color":"blue"},{"text":"[-200]","color":"blue","clickEvent":{"action":"run_command","value":"/function systems:operator/actions/setting/modify/cool_down/-200"}},{"text":" "},{"text":"[Reset]","color":"yellow","clickEvent":{"action":"run_command","value":"/function systems:operator/actions/setting/modify/cool_down/reset"}}]
    tellraw @s ["",{"text":"Game Time","color":"gold"},{"text":" : ["},{"nbt":"Main.Custom.Times.Game.MainGame","storage":"attack:settings"},{"text":"] "},{"text":"[+20]","color":"red","clickEvent":{"action":"run_command","value":"/function systems:operator/actions/setting/modify/game_time/20"}},{"text":" ","color":"red"},{"text":"[+200]","color":"red","clickEvent":{"action":"run_command","value":"/function systems:operator/actions/setting/modify/game_time/200"}},{"text":" "},{"text":"[-20]","color":"blue","clickEvent":{"action":"run_command","value":"/function systems:operator/actions/setting/modify/game_time/-20"}},{"text":" ","color":"blue"},{"text":"[-200]","color":"blue","clickEvent":{"action":"run_command","value":"/function systems:operator/actions/setting/modify/game_time/-200"}},{"text":" "},{"text":"[Reset]","color":"yellow","clickEvent":{"action":"run_command","value":"/function systems:operator/actions/setting/modify/game_time/reset"}}]
    tellraw @s ["",{"text":"Preparation Time","color":"gold"},{"text":" : ["},{"nbt":"Main.Custom.Times.Game.Preparation","storage":"attack:settings"},{"text":"] "},{"text":"[+20]","color":"red","clickEvent":{"action":"run_command","value":"/function systems:operator/actions/setting/modify/preparation_time/20"}},{"text":" ","color":"red"},{"text":"[+200]","color":"red","clickEvent":{"action":"run_command","value":"/function systems:operator/actions/setting/modify/preparation_time/200"}},{"text":" "},{"text":"[-20]","color":"blue","clickEvent":{"action":"run_command","value":"/function systems:operator/actions/setting/modify/preparation_time/-20"}},{"text":" ","color":"blue"},{"text":"[-200]","color":"blue","clickEvent":{"action":"run_command","value":"/function systems:operator/actions/setting/modify/preparation_time/-200"}},{"text":" "},{"text":"[Reset]","color":"yellow","clickEvent":{"action":"run_command","value":"/function systems:operator/actions/setting/modify/preparation_time/reset"}}]
    tellraw @s ["",{"text":"Exhibition Game Time","color":"gold"},{"text":" : ["},{"nbt":"Main.Custom.Times.Game.Ex","storage":"attack:settings"},{"text":"] "},{"text":"[+20]","color":"red","clickEvent":{"action":"run_command","value":"/function systems:operator/actions/setting/modify/ex_time/20"}},{"text":" ","color":"red"},{"text":"[+200]","color":"red","clickEvent":{"action":"run_command","value":"/function systems:operator/actions/setting/modify/ex_time/200"}},{"text":" "},{"text":"[-20]","color":"blue","clickEvent":{"action":"run_command","value":"/function systems:operator/actions/setting/modify/ex_time/-20"}},{"text":" ","color":"blue"},{"text":"[-200]","color":"blue","clickEvent":{"action":"run_command","value":"/function systems:operator/actions/setting/modify/ex_time/-200"}},{"text":" "},{"text":"[Reset]","color":"yellow","clickEvent":{"action":"run_command","value":"/function systems:operator/actions/setting/modify/ex_time/reset"}}]
    tellraw @s ["",{"text":"Exhibition Game","color":"gold"},{"text":" : ["},{"nbt":"Main.Custom.Switch.Ex","storage":"attack:settings"},{"text":"] "},{"text":"[True]","color":"red","clickEvent":{"action":"run_command","value":"/function systems:operator/actions/setting/modify/ex_game/true"}},{"text":" ","color":"red"},{"text":"[false]","color":"blue","clickEvent":{"action":"run_command","value":"/function systems:operator/actions/setting/modify/ex_game/false"}},{"text":" "},{"text":"[Reset]","color":"yellow","clickEvent":{"action":"run_command","value":"/function systems:operator/actions/setting/modify/ex_game/reset"}}]
