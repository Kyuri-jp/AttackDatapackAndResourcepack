#> libs:show_player_info/get_cool_down_time

#> score holder
# @private
    #declare score_holder #Player.CoolTime.Sec
# reset
    scoreboard players reset @s temporary

# get time(tick)
    scoreboard players operation @s temporary = @s coolDownCounter

# get data
    execute store result score #Player.CoolTime.Sec temporary run data get storage attack:registry Main.Calculation.Seconds

# to sec.
    scoreboard players operation @s temporary /= #Player.CoolTime.Sec temporary

# reset
    scoreboard players reset #Player.CoolTime.Sec temporary