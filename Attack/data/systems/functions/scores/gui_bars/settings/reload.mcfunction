#> systems:scores/gui_bars/settings/reload
#
# Bossbar setting.gui群の値を更新します
#
# @within
#   systems:operator/actions/setting/modify/message
#   core:load/
 
# reload
    execute store result bossbar settings.gui.preparation_time value run data get storage attack:settings Main.Custom.Times.Game.Preparation
    execute store result bossbar settings.gui.game_time value run data get storage attack:settings Main.Custom.Times.Game.MainGame
    execute store result bossbar settings.gui.ex_time value run data get storage attack:settings Main.Custom.Times.Game.Ex
    execute store result bossbar settings.gui.cd_time value run data get storage attack:settings Main.Custom.Times.Game.CoolDown