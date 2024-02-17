#> systems:tick/delay_tick/
# @within systems:tick/

#> score holder
# @within systems:tick/delay_tick/
    #declare score_holder #System.DelayTick.5
    #declare score_holder #System.DelayTick.10
    #declare score_holder #System.DelayTick.20

scoreboard players add #System.DelayTick.5 counter 1
scoreboard players add #System.DelayTick.10 counter 1
scoreboard players add #System.DelayTick.20 counter 1

execute if score #System.DelayTick.5 counter matches 5.. run function systems:tick/delay_tick/5tick
execute if score #System.DelayTick.10 counter matches 10.. run function systems:tick/delay_tick/10tick
execute if score #System.DelayTick.20 counter matches 20.. run function systems:tick/delay_tick/20tick