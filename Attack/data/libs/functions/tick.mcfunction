# tick
    ## player count
        function libs:players/player_count

    ## sync xp and mp
        execute as @a run function libs:players/synchronize_xp_and_mp

    ## death detect
        execute as @a at @s run function libs:players/events/detect_death