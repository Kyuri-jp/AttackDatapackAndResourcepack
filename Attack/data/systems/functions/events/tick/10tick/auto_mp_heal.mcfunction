#> systems:events/tick/10tick/auto_mp_heal
#
# MPを自動的に回復します
#
# @within systems:tick/delay_tick/10tick

# timer
    scoreboard players add @a Mp 2
    execute as @a run function systems:util/safe_mp
