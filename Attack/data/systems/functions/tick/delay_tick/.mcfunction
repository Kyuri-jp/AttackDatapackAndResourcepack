#> systems:tick/delay_tick/
#
# 遅延Tick処理
#
# @within systems:tick/
# @reads
# score #System.DelayTick.5 Counter
# score #System.DelayTick.10 Counter
# score #System.DelayTick.20 Counter
# @writes
# score #System.DelayTick.5 Counter
# score #System.DelayTick.10 Counter
# score #System.DelayTick.20 Counter

#> score holder
# @within systems:tick/delay_tick/*
    #declare score_holder #System.DelayTick.5
    #declare score_holder #System.DelayTick.10
    #declare score_holder #System.DelayTick.20

# add counter
    scoreboard players add #System.DelayTick.5 Counter 1
    scoreboard players add #System.DelayTick.10 Counter 1
    scoreboard players add #System.DelayTick.20 Counter 1

# call
    execute if score #System.DelayTick.5 Counter matches 5.. run function systems:tick/delay_tick/5tick
    execute if score #System.DelayTick.10 Counter matches 10.. run function systems:tick/delay_tick/10tick
    execute if score #System.DelayTick.20 Counter matches 20.. run function systems:tick/delay_tick/20tick