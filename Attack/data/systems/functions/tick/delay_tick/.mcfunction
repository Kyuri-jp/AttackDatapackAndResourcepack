#> systems:tick/delay_tick/
# @within systems:tick/

scoreboard players add $counter.tick.delay.5 counter 1
scoreboard players add $counter.tick.delay.10 counter 1
scoreboard players add $counter.tick.delay.20 counter 1

execute if score $counter.tick.delay.5 counter matches 5.. run function systems:tick/delay_tick/5tick
execute if score $counter.tick.delay.10 counter matches 10.. run function systems:tick/delay_tick/10tick
execute if score $counter.tick.delay.20 counter matches 20.. run function systems:tick/delay_tick/20tick