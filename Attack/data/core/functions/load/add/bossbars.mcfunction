#> core:load/add/bossbars
#
# Bossbarの追加します
#
# @within function core:load/

# set
    bossbar add main.timer {"text":"Time remaining:any seconds"}
    bossbar set main.timer color red
    bossbar add settings.gui.preparation_time {"text":"Preparation Game Time"}
    bossbar set settings.gui.preparation_time color blue
    bossbar add settings.gui.game_time {"text":"Main Game Time"}
    bossbar set settings.gui.game_time color green
    bossbar add settings.gui.ex_time {"text":"Exhibition Game Time"}
    bossbar set settings.gui.ex_time color red
    bossbar add settings.gui.cd_time {"text":"Cool Down Time"}
    bossbar set settings.gui.cd_time color white