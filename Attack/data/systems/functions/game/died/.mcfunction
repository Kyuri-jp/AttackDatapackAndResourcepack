# reset attribute
    attribute @s generic.max_health base set 40

# if playing
    execute if entity @s[tag=Player.Playing] run function systems:game/died/playing

# reset
    scoreboard players reset @s deathDetecter