#> api:player/easy_attribute_modifier/
#
# attributeを操作します
#
# @api

#> Storage Path
# @within api:player/easy_attribute_modifier/*
    #declare storage eam:macro

# macro
    $data modify storage eam:macro Macro.AttributeNane set value $(AttributeNane)
    $data modify storage eam:macro Macro.Value set value $(Value)

# call
    $function api:player/easy_attribute_modifier/$(Operation)
    
