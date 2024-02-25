#> core:load/set/bossbar/max
#
# Bossbarの値を設定します
#
# @within function core:load/

# set
    execute store result bossbar settings.gui.preparation_time max run data get storage attack:settings Main.Default.Times.Game.Preparation 2
    execute store result bossbar settings.gui.game_time max run data get storage attack:settings Main.Default.Times.Game.MainGame 2
    execute store result bossbar settings.gui.ex_time max run data get storage attack:settings Main.Default.Times.Game.Ex 2
    execute store result bossbar settings.gui.cd_time max run data get storage attack:settings Main.Default.Times.Game.CoolDown 2