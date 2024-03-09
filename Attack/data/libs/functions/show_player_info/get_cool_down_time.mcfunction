#> libs:show_player_info/get_cool_down_time
#
# クールダウンの値を取得します
#
# @reads
# score @s CoolDownCounter

#> Score Holder
# @private
    #declare score_holder #Player.CoolTime.Sec
# reset
    scoreboard players reset @s Temporary

# get time(tick)
    scoreboard players operation @s Temporary = @s CoolDownCounter

# get data
    execute store result score #Player.CoolTime.Sec Temporary run data get storage attack:registry Main.Calculation.Seconds

# to sec.
    scoreboard players operation @s Temporary /= #Player.CoolTime.Sec Temporary

# reset
    scoreboard players reset #Player.CoolTime.Sec Temporary