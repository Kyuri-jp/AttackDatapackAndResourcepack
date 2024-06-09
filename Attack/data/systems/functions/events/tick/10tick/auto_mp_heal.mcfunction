#> systems:events/tick/10tick/auto_mp_heal
#
# MPを自動的に回復します
#
# @within systems:tick/delay_tick/10tick

#> Temp Score Holder
# @private
    #declare score_holder #Player.HealMp
    #declare score_holder #Const.Fifty

# get data
    execute store result score #Const.Fifty Temporary run data get storage attack:registry Main.Const.50

# heal mp
    scoreboard players operation #Player.HealMp Temporary = @s MpMax
    scoreboard players operation #Player.HealMp Temporary /= #Const.Fifty Temporary
    execute if score @s MpMax matches 50.. run scoreboard players operation @s Mp += #Player.HealMp Temporary
    execute unless score @s MpMax matches 50.. run scoreboard players add @s Mp 1
    function systems:util/safe_mp

# reset
    scoreboard players reset #Player.HealMp Temporary
    scoreboard players reset #Const.Fifty Temporary
