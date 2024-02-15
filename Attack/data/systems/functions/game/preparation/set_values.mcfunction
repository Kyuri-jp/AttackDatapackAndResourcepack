# get data -> set values
    ## bossbar
        execute store result bossbar attack.game.timer max run data get storage storage:settings Main.Custom.Times.Game.Preparation
        execute store result bossbar attack.game.timer value run data get storage storage:settings Main.Custom.Times.Game.Preparation

    ## counter
    execute store result score $timer.preparationTime counter run data get storage storage:settings Main.Custom.Times.Game.Preparation

# change bossbar properties
    bossbar set attack.game.timer visible true
    bossbar set attack.game.timer color blue

# start timer
    function systems:preparation/bossbar/preparation_time/start_timer