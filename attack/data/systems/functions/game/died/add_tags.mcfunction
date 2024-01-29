# reset attribute
    attribute @s generic.max_health base set 40

# add tag
    execute if entity @s[tag=game.players.playing] run tag @s add game.coolDownNow

# set timer
    execute if entity @s[tag=game.players.playing] run function systems:game/died/set_timer