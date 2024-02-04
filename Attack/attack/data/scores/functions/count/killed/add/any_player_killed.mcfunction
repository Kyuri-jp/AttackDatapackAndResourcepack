# add count
    scoreboard players add @s killCounter 1

# give mana
    loot give @s[tag=game.players.playing] loot loots:spells/get_some_mana

# revoke
    advancement revoke @s only libs:any_player_killed