# get data -> set value
    data modify storage storage:settings Main.Custom.Times.Game.CoolDown set from storage storage:settings Main.Default.Times.Game.CoolDown

# reshow
    function systems:setting/modify/message
