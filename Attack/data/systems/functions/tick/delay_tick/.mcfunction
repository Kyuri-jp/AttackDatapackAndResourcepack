#> systems:tick/delay_tick/
# @within systems:tick/

#> score holder
# @within systems:tick/delay_tick/*
    #declare score_holder #System.DelayTick.5
    #declare score_holder #System.DelayTick.10
    #declare score_holder #System.DelayTick.20

scoreboard players add #System.DelayTick.5 Counter 1
scoreboard players add #System.DelayTick.10 Counter 1
scoreboard players add #System.DelayTick.20 Counter 1

execute if score #System.DelayTick.5 Counter matches 5.. run function systems:tick/delay_tick/5tick
execute if score #System.DelayTick.10 Counter matches 10.. run function systems:tick/delay_tick/10tick
execute if score #System.DelayTick.20 Counter matches 20.. run function systems:tick/delay_tick/20tick