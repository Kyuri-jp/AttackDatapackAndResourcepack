# add count
    scoreboard players add @s killCounter 1

# give mana
    loot give @s[tag=game.players.playing] loot loots:spells/get_some_mana

# give mana
    scoreboard players add @s[tag=game.players.playing] mp 15

# revoke
    advancement revoke @s only libs:any_player_killed