execute if score @s useFungusStick matches 1.. run function systems:weapons/magics/rods/used
execute if entity @s[y=-32,dy=0] if entity @e[type=armor_stand,tag=waitRoom.anchor.teleporter,distance=..18] run function systems:wait_room/back_for_room
execute if entity @e[type=arrow,distance=..2,limit=1,sort=nearest] if predicate libs:items/weapons/magics/spells/have_spell run function systems:weapons/magics/spells/detect_used
execute unless predicate libs:items/weapons/magics/spells/have_spell run scoreboard players reset @s useBow
execute if predicate libs:items/weapons/magics/spells/have_spell_in_off_hand run function systems:weapons/magics/spells/have_offhand
execute run function systems:buttons/used
execute if entity @s[tag=game.players.playing] run function libs:players/show_player_info/