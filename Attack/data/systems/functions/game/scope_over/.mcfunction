#> systems:game/scope_over/
#
# フィールドの外に出てしまった際の処理
#
# @within systems:tick/as_at

#> Tag
# @private
    #declare tag Anchor.ScopeOver

# detect
    execute if entity @s[team=!Watch,team=!Preparation,tag=Player.Playing,y=-38,dy=0] if entity @e[type=armor_stand,tag=Anchor.ScopeOver,distance=..40] run function systems:game/scope_over/detect

# return
    execute if entity @s[team=Preparation,tag=Player.Playing,y=-38,dy=0] if entity @e[type=armor_stand,tag=Anchor.ScopeOver,distance=..40] run return run function systems:game/scope_over/preparation