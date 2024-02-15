#> core:load/set/bossbar/max
# @within function core:load/

# set
    execute store result bossbar attack.settings.gui.preparation_time max run data get storage storage:settings Main.Default.Times.Game.Preparation 2
    execute store result bossbar attack.settings.gui.game_time max run data get storage storage:settings Main.Default.Times.Game.MainGame 2
    execute store result bossbar attack.settings.gui.ex_time max run data get storage storage:settings Main.Default.Times.Game.Ex 2
    execute store result bossbar attack.settings.gui.cd_time max run data get storage storage:settings Main.Default.Times.Game.CoolDown 2