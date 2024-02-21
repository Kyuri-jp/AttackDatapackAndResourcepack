# add count
    scoreboard players add @s KillCounter 1

# give mana
    loot give @s[tag=Player.Playing] loot assets:spells/get_some_mana

# give mana
    scoreboard players add @s[tag=Player.Playing] Mp 15

# revoke
    advancement revoke @s only assets:any_player_killed