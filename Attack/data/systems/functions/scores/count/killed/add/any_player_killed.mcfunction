#> systems:scores/count/killed/add/any_player_killed
#
# プレイヤーをキルした際の処理
#
# @within assets:any_player_killed

# add count
    scoreboard players add @s KillCounter 1

# give mana
    loot give @s[tag=Player.Playing] loot assets:weapons/spells/get/get_some_mana

# give mp
    scoreboard players add @s[tag=Player.Playing] Mp 20
    function systems:util/safe_mp
    
# revoke
    advancement revoke @s only assets:any_player_killed