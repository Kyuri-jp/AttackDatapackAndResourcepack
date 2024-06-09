#> api:player/easy_attribute_modifier/remove
# @within api:player/easy_attribute_modifier/

#> Score Holder
# @private
    #declare score_holder $EAM.InputedValue
    #declare score_holder $EAM.PlayersValue
    #declare score_holder #Const.100

# calc
    execute store result score $EAM.InputedValue Temporary run data get storage eam:macro Macro.Value 100
    execute store result score $EAM.PlayersValue Temporary run attribute @s generic.max_health get 100

    scoreboard players operation $EAM.PlayersValue Temporary -= $EAM.InputedValue Temporary

    execute store result storage eam:macro Macro.Result float 0.01 run scoreboard players get $EAM.InputedValue Temporary

# reset
    scoreboard players reset $EAM.InputedValue Temporary
    scoreboard players reset $EAM.PlayersValue Temporary
    data remove storage eam:macro Macro.InputedValue

# set
    function api:player/easy_attribute_modifier/set with storage eam:macro Macro