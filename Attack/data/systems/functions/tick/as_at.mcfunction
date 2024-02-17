#> systems:tick/as_at
# @within systems:tick/

#> tag
# @private
    #declare tag Anchor.WaitRoom.Teleporter

# use rod
    execute if score @s useFungusStick matches 1.. run function systems:weapons/magics/rods/used

# back room
    execute if entity @s[y=-32,dy=0] if entity @e[type=armor_stand,tag=Anchor.WaitRoom.Teleporter,distance=..18] run function systems:wait_room/back_for_room

# spell
    execute if entity @e[type=arrow,distance=..2,limit=1,sort=nearest] if predicate assets:items/weapons/magics/spells/have_spell run function systems:weapons/magics/spells/detect_used
    execute unless predicate assets:items/weapons/magics/spells/have_spell run scoreboard players reset @s useBow
    execute if predicate assets:items/weapons/magics/spells/have_spell_in_off_hand run function systems:weapons/magics/spells/have_offhand

# button
    execute run function systems:operator/buttons/used

# player info
    execute if entity @s[tag=Player.Playing] run function libs:show_player_info/

# sync mp
    function libs:synchronize_xp_and_mp/