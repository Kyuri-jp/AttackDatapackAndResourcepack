#> core:load/add/bossbars
# @within function core:load/

# set
    bossbar add attack.game.timer {"text":"Time remaining:any seconds"}
    bossbar set attack.game.timer color red
    bossbar add attack.settings.gui.preparation_time {"text":"Preparation Game Time"}
    bossbar set attack.settings.gui.preparation_time color blue
    bossbar add attack.settings.gui.game_time {"text":"Main Game Time"}
    bossbar set attack.settings.gui.game_time color green
    bossbar add attack.settings.gui.ex_time {"text":"Exhibition Game Time"}
    bossbar set attack.settings.gui.ex_time color red
    bossbar add attack.settings.gui.cd_time {"text":"Cool Down Time"}
    bossbar set attack.settings.gui.cd_time color white