execute unless score @s useCarrotStick matches 1.. run return 0
execute unless predicate api:is_sneaking if predicate api:items/operator/buttons/start run scoreboard players reset @s useCarrotStick
execute if predicate api:is_sneaking if predicate api:items/operator/buttons/start run function systems:items/operator/start

execute if predicate api:items/operator/buttons/setting run function systems:items/operator/setting