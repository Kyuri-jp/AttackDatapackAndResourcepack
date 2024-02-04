# reset attribute
    attribute @s generic.max_health base set 40

# add tag
    tag @s[tag=game.players.playing] add game.coolDownNow

# set timer
    execute if entity @s[tag=game.players.playing] run function systems:game/died/set_timer

# reset
    scoreboard players reset @s deathDetecter