#> systems:game/scope_over/detect
#
# 範囲外プレイヤーを検知
#
# @within systems:game/scope_over/

#> Score Holder
# @private
    #declare score_holder #Player.ScopeOver.HaveAttacker

#> Tag
# @private
    #declare tag Player.ScopeOver.Attacker
    #declare tag Anchor.ScopeOver

# return
    execute if entity @s[advancements={assets:common/system/impossible}] run return fail

# grant
    advancement grant @s only assets:common/system/impossible

# teleport
    tp @s ~ ~1 ~

# add tag
    execute store success score #Player.ScopeOver.HaveAttacker Temporary on attacker run tag @s add Player.ScopeOver.Attacker

# kill
    gamerule showDeathMessages false
    execute unless score #Player.ScopeOver.HaveAttacker Temporary matches 1 run tellraw @a {"translate":"death.fell.scope_over","with": [{"selector":"@s"}]}
    execute if score #Player.ScopeOver.HaveAttacker Temporary matches 1 run tellraw @a {"translate":"death.attack.scope_over.player","with": [{"selector":"@s"},{"selector":"@a[tag=Player.ScopeOver.Attacker,limit=1]"}]}
    ## reset
        tag @a[tag=Player.ScopeOver.Attacker] remove Player.ScopeOver.Attacker
        scoreboard players reset #Player.ScopeOver.HaveAttacker Temporary
    kill @s
    gamerule showDeathMessages true
