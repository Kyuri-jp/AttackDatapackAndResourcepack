#> scores:gui_bars/settings/reload
# @within scores:gui_bars/settings/reload

# reload
    execute store result bossbar settings.gui.preparation_time value run data get storage storage:settings Main.Custom.Times.Game.Preparation
    execute store result bossbar settings.gui.game_time value run data get storage storage:settings Main.Custom.Times.Game.MainGame
    execute store result bossbar settings.gui.ex_time value run data get storage storage:settings Main.Custom.Times.Game.Ex
    execute store result bossbar settings.gui.cd_time value run data get storage storage:settings Main.Custom.Times.Game.CoolDown